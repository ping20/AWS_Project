provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "tf_backend" {
  bucket = "awsproject-pushpendra-bucket"
}

resource "aws_s3_bucket_versioning" "tf_backend_versioning" {
  bucket = aws_s3_bucket.tf_backend.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "tf_backend" {
  bucket = aws_s3_bucket.tf_backend.id

  block_public_acls   = true
  block_public_policy = true
  ignore_public_acls  = true
  restrict_public_buckets = true
}
