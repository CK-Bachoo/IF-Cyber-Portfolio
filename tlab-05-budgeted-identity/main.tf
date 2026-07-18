provider "aws" {  
  region = "us-east-1"
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

# 1. Budget Resource
resource "aws_budgets_budget" "tlab_budget" {  
  name              = "Titan-FinTech-Budget"  
  budget_type       = "COST"  
  limit_amount      = "10.00"  
  limit_unit        = "USD"  
  time_unit         = "MONTHLY"  

  notification {    
    comparison_operator        = "GREATER_THAN"    
    notification_type          = "ACTUAL"    
    threshold                  = 80    
    threshold_type             = "PERCENTAGE"    
    subscriber_email_addresses = ["ckizzzle@gmail.com"]  
  }
}

# 2. S3 Bucket Resource
resource "aws_s3_bucket" "titan_vault" {
  bucket        = "titan-fintech-vault-ckb-${random_id.bucket_suffix.hex}"
  force_destroy = true
}

# 3. IAM Role Resource (Fixed String Explicitly)
resource "aws_iam_role" "titan_role" {
  name = "Titan-EC2-Vault-Role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ]
}
POLICY
}

# 4. IAM Role Policy Resource
resource "aws_iam_role_policy" "titan_surgical_policy" {
  name = "Titan-S3-PutOnly-Policy"
  role = aws_iam_role.titan_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "s3:PutObject"
        Effect = "Allow"
        Resource = "${aws_s3_bucket.titan_vault.arn}/*"
      }
    ]
  })
}

# 5. IAM Instance Profile Resource
resource "aws_iam_instance_profile" "titan_profile" {
  name = "Titan-EC2-Instance-Profile"
  role = aws_iam_role.titan_role.name
}

# 6. EC2 Instance Resource
resource "aws_instance" "titan_compute" {
  ami                  = "ami-0453ec754f44f9a4a"
  instance_type        = "t3.micro"               
  iam_instance_profile = aws_iam_instance_profile.titan_profile.name

  tags = {
    Name = "Titan-Production-Compute"
  }
}
