provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-test-bucket-12345-by-pavithra"
}