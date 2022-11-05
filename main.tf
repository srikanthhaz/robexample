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
  access_key = ""
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
resource "aws_instance" "web" {
  ami           = "ami-06640050dc3f556bb"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

