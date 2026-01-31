provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "exmaple" {
  bucket = "my-unique-test-bucket-12345_by_pavithra"
}
