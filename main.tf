terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  access_key = "AKIAXDZ4MURN2BK2UNAJ"
  secret_key = "0Figk9dq+kTWBcPRZaRHsIORRtU9UZaO9t6HnLq0"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_instance" "web" {
  ami           = "data.aws_ami.ubuntu.id"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
