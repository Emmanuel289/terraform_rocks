provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "tf_course" {
  bucket = "okechukwu-tf-course"
  acl    = "private"
}

