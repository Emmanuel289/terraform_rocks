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

resource "aws_security_group" "prod_web" {
  name        = "prod_web"
  description = "Allow standard http and https port inbound and everything outbound"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["174.0.250.8/32"]
   }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["174.0.250.8/32"]
   }
  
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  
  tags =  {
    "Terraform" : "true"
  }
  
   
}
