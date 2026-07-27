provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "pipeline_target_vpc" {
  cidr_block           = "10.99.0.0/16"
  enable_dns_hostnames = true
  tags = {
    Name = "Titan-Pipeline-Target-VPC"
  }
}
