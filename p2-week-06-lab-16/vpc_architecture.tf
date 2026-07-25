provider "aws" {
  region = "us-east-1"
}

# The Main VPC
resource "aws_vpc" "tkh_fortress" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "TKH-Fortress-VPC"
  }
}

# The Internet Gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.tkh_fortress.id
}

# Public Subnet Tier (The Public Courtyard)
resource "aws_subnet" "public_courtyard" {
  vpc_id                  = aws_vpc.tkh_fortress.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "TKH-Public-Courtyard"
  }
}

# The Private Subnet (The Vault)
resource "aws_subnet" "private_vault" {
  vpc_id     = aws_vpc.tkh_fortress.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "TKH-Private-Vault"
  }
}

# The Public Internet Route Table
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.tkh_fortress.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Nam = "TKH-Public-Internet-Route"
  }
}

# Route Table Association strictly to the Public Subnet
resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public_courtyard.id
  route_table_id = aws_route_table.public_route.id
}
