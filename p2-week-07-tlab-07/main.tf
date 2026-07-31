provider "aws" {
  region = "us-east-1"
}

resource "aws_security_group" "forge_sg" {
  name        = "forge-secure-sg"
  description = "Hardened perimeter security group"

  ingress {
    description = "Secure SSH access from mobile cockpit edge"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["172.56.21.43/32"]
  }
}
