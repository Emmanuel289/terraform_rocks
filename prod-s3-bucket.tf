provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "okechukwu-tf-course"
  acl    = "private"
}

resource "aws_default_vpc" "default"{

}

