provider "aws" {
      region = "eu-west-1"
      
}


resource "aws_instance" "teraec2-2" {
ami = "ami-0a7c31280fbd23a86"
instance_type = "t2.micro"
tags = {
    Name = "teraec2-2"
}
}


resource "aws_vpc" "teravpc-2" {
  cidr_block       = "10.1.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "teravpc-2"
  }
}

resource "aws_subnet" "terasubnet-2" {
  vpc_id     = aws_vpc.teravpc-2.id
  cidr_block = "10.1.1.0/24"

  tags = {
    Name = "terasubnet-2"
  }
}
