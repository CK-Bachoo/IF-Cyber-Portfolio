provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "target_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = { Name = "TKH-Target-VPC" }
}

resource "aws_subnet" "honeypot_subnet" {
  vpc_id                  = aws_vpc.target_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true
  tags = { Name = "TKH-Honeypot-Subnet" }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.target_vpc.id
  tags = { Name = "TKH-Honeypot-IGW" }
}

resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.target_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = { Name = "TKH-Honeypot-RouteTable" }
}

resource "aws_route_table_association" "public_assoc" {
  subnet_id      = aws_subnet.honeypot_subnet.id
  route_table_id = aws_route_table.public_rt.id
}

resource "aws_security_group" "locked_sg" {
  name   = "tkh-locked-honeypot-sg"
  vpc_id = aws_vpc.target_vpc.id
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "honeypot_server" {
  ami                    = "ami-0453ec754f44f9a4a"
  instance_type          = "t3.micro"
  subnet_id              = aws_subnet.honeypot_subnet.id
  vpc_security_group_ids = [aws_security_group.locked_sg.id]
  tags = { Name = "TKH-Honeypot-Target-Server" }
}

resource "aws_iam_role" "flow_log_role" {
  name = "TKH-Flow-Log-Role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = { Service = "vpc-flow-logs.amazonaws.com" }
    }]
  })
}

resource "aws_iam_role_policy" "flow_log_policy" {
  name = "TKH-Flow-Log-Policy"
  role = aws_iam_role.flow_log_role.id
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Action = [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ]
      Effect   = "Allow"
      Resource = "*"
    }]
  })
}

resource "aws_cloudwatch_log_group" "tkh_flow_logs_group" {
  name              = "/tkh/vpc-flow-logs"
  retention_in_days = 1
}

resource "aws_flow_log" "tkh_vpc_wiretap" {
  iam_role_arn         = aws_iam_role.flow_log_role.arn
  log_destination      = aws_cloudwatch_log_group.tkh_flow_logs_group.arn
  log_destination_type = "cloud-watch-logs"
  traffic_type         = "ALL"
  vpc_id               = aws_vpc.target_vpc.id
}
