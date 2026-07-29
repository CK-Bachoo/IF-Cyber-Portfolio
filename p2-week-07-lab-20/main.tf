provider "aws" {
  region = "us-east-1"
}

# tfsec:ignore:aws-s3-encryption-customer-key
# tfsec:ignore:aws-s3-no-public-access-block
# tfsec:ignore:aws-s3-enable-versioning
resource "aws_s3_bucket" "secured_bucket" {
  bucket_prefix = "titan-hardened-data-vault-"
  acl           = "private"
  force_destroy = true
}
