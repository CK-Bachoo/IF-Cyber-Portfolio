provider "aws" {  
  region = "us-east-1"
}

# The Target IAM User for Dave
resource "aws_iam_user" "dave_user" {
  name = "Dave_The_Dev"
}

# The Fixed Scoped Policy for Dave's Finance Bucket Access
resource "aws_iam_user_policy" "dave_restricted_policy" {  
  name = "TKH-Finance-Restricted-Policy"  
  user = aws_iam_user.dave_user.name  
  
  policy = jsonencode({    
    Version = "2012-10-17"    
    Statement = [      
      {        
        Action = [
          "s3:GetObject", 
          "s3:ListBucket"
        ]        
        Effect = "Allow"        
        Resource = [
          "arn:aws:s3:::tkh-finance-bucket",
          "arn:aws:s3:::tkh-finance-bucket/*"
        ]      
      }    
    ]  
  })
}
