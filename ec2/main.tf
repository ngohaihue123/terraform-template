terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "ap-southeast-1"
}

resource "aws_instance" "ec2_free_tier" {
  ami           = "ami-0a72af05d27b49ccb"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}