provider "aws" {
region = "ap-south-1"
}
resource "aws_s3_bucket" "example"{
bucket = "my-unique-test-bucket-123456-by-pavithra"
}

resource "aws_instance" "web-server"{
ami = "ami-0522ab6e1ddcc7055"
instance_type = "t2.micro"

tags = {
Name = "my-unique-test-bucket-123456-by-pavithra"
}
}
