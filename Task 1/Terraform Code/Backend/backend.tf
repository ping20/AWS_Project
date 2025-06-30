terraform {
  backend "s3" {
    bucket = "awsproject-pushpendra-bucket"  
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"
  }
}
