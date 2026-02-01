# this to createEc2 instances AWS 

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.16"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_instance" "web_server" {
   ami    = "ami-0b6c6ebed2801a5cb"
   instance_type = "t2.micro"

tags ={
  Name = "terraform_demo"
}
}
