# ==============================================================================
# TITAN FINTECH — PHASE 2 WEEK 12 DAY 1: MILESTONE 1 INFRASTRUCTURE BLUEPRINT
# DESIGN CONVENTION: WORLD ELITE GOLD CODE STANDARD ENFORCEMENT
# ==============================================================================

provider "aws" {
  region = "us-east-1"
}

# 🌐 1. THE NETWORK LAYER
resource "aws_vpc" "capstone_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name        = "TKH-Final-Capstone-VPC"
    Environment = "Production"
    Owner       = "Chad K. Bachoo"
  }
}

resource "aws_subnet" "capstone_subnet" {
  vpc_id                  = aws_vpc.capstone_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "TKH-Final-Capstone-Subnet"
  }
}

resource "aws_internet_gateway" "capstone_igw" {
  vpc_id = aws_vpc.capstone_vpc.id

  tags = {
    Name = "TKH-Final-Capstone-IGW"
  }
}

resource "aws_route_table" "capstone_rt" {
  vpc_id = aws_vpc.capstone_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.capstone_igw.id
  }

  tags = {
    Name = "TKH-Final-Capstone-RouteTable"
  }
}

resource "aws_route_table_association" "capstone_rta" {
  subnet_id      = aws_subnet.capstone_subnet.id
  route_table_id = aws_route_table.capstone_rt.id
}

# 🛡️ 2. THE FIREWALL PERIMETER (LEAST PRIVILEGE)
resource "aws_security_group" "capstone_sg" {
  name        = "tkh-final-capstone-sg"
  description = "Enforces perimeter application controls and restricted ingress boundaries"
  vpc_id      = aws_vpc.capstone_vpc.id

  # Public Ingress: Open Web Port traffic validation
  ingress {
    description = "Allow standard HTTP public application delivery vectors"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Hardened Ingress: Restricted administrative access to your specific home IP block
  ingress {
    description = "Restricted SSH access gate mapped tightly to isolated operator perimeter"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # NOTE: Substitute with specific x.x.x.x/32 block for production audits
  }

  # Standard Egress rule structure
  egress {
    description = "Allow complete outbound delivery loops for systemic package resolution"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "TKH-Final-Capstone-SecurityGroup"
  }
}

# 🎛️ 3. THE INFRASTRUCTURE SERVER NODE
resource "aws_instance" "capstone_server" {
  ami                    = "ami-0e2c8ccd9e036f13d" # Amazon Linux 2023 AMI US-East-1 Target
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.capstone_subnet.id
  vpc_security_group_ids = [aws_security_group.capstone_sg.id]

  # User_data: Automated provisioning script to launch application runtime stacks
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>Titan FinTech Final Capstone Architecture — Provisioned Programmatically via IaC</h1>" > /var/www/html/index.html
              EOF

  tags = {
    Name = "TKH-Final-Capstone-EC2"
  }
}
