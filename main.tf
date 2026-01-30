provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-first-bucket-from-terraform-by-pavithra"
}