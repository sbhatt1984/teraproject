provider "aws" {
  region = var.region

}


resource "aws_instance" "teraec2-3" {
  ami           = "ami-0a7c31280fbd23a86"
  instance_type = "t2.micro"
  tags = {
    Name = "teraec2-3"
  }
}


resource "aws_vpc" "teravpc-3" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = "teravpc-3"
  }
}

resource "aws_subnet" "terasubnet-3" {
  vpc_id     = aws_vpc.teravpc-3.id
  cidr_block = var.subnet_cidr

  tags = {
    Name = "terasubnet-3"
  }
}
