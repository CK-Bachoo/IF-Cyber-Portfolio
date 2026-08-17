provider "aws" {
  region = "us-east-1"
}

resource "aws_config_config_rule" "s3_public_read_prohibited" {
  name        = "s3-bucket-public-read-prohibited"
  description = "Ensures S3 buckets do not allow public read access."

  source {
    owner             = "AWS"
    source_identifier = "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }
}
