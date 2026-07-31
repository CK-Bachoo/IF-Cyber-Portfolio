provider "aws" {
  region = "us-east-1"
}

# ====================================================================
# 🌐 LAYER 1: THE PERIMETER (Network Architecture)
# ====================================================================

# The Production VPC
resource "aws_vpc" "titan_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "Titan-Prod-VPC"
  }
}

# The Public Subnet (Pinned to us-east-1a to prevent capacity errors)
resource "aws_subnet" "titan_public_subnet" {
  vpc_id                  = aws_vpc.titan_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "Titan-Prod-Public-Subnet"
  }
}

# The Internet Gateway (The Front Door)
resource "aws_internet_gateway" "titan_igw" {
  vpc_id = aws_vpc.titan_vpc.id

  tags = {
    Name = "Titan-Prod-IGW"
  }
}

# The Routing Engine
resource "aws_route_table" "titan_public_rt" {
  vpc_id = aws_vpc.titan_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.titan_igw.id
  }

  tags = {
    Name = "Titan-Prod-Public-RouteTable"
  }
}

# Tether Routing Engine strictly to the Public Subnet
resource "aws_route_table_association" "titan_public_assoc" {
  subnet_id      = aws_subnet.titan_public_subnet.id
  route_table_id = aws_route_table.titan_public_rt.id
}


# ====================================================================
# 👁️ LAYER 2: THE WIRETAP (Telemetry Architecture)
# ====================================================================

# CloudWatch Log Group with 1-Day Security Retention
resource "aws_cloudwatch_log_group" "titan_logs_group" {
  name              = "/tkh/titan-prod-vpc-logs"
  retention_in_days = 1
}

# The VPC Flow Log Wiretap
resource "aws_flow_log" "titan_wiretap" {
  iam_role_arn         = aws_iam_role.flow_log_role.arn
  log_destination      = aws_cloudwatch_log_group.titan_logs_group.arn
  log_destination_type = "cloud-watch-logs"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.titan_vpc.id
}


# ====================================================================
# 🛑 LAYER 3: ZERO TRUST COMPUTE (Host Architecture)
# ====================================================================

# Air-Gapped Security Group: ZERO Inbound Rules Allowed
resource "aws_security_group" "titan_zero_trust_sg" {
  name        = "Titan-Zero-Trust-Production-SG"
  description = "Bans traditional inbound protocols. Outbound egress traffic only."
  vpc_id      = aws_vpc.titan_vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Titan-Zero-Trust-SG"
  }
}

# Secure Compute Target (Upgraded to t3.micro for sandbox authorization)
resource "aws_instance" "titan_production_server" {
  ami                  = "ami-0453ec754f44f9a4a" # Ubuntu 24.04 LTS Free-Tier eligible
  instance_type        = "t3.micro"
  subnet_id            = aws_subnet.titan_public_subnet.id
  iam_instance_profile = aws_iam_instance_profile.ssm_profile.name
  vpc_security_group_ids = [aws_security_group.titan_zero_trust_sg.id]

  # NO SSH KEY IS ASSIGNED - Enforcing Keyless Zero Trust Uplink
  tags = {
    Name = "Titan-Prod-ZeroTrust-Server"
  }
}
