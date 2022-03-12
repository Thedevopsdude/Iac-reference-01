provider "aws" {
  region  = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-state-files-1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy
  tags = local.tags
}

resource "aws_subnet" "main" {
  count=3
  vpc_id     = aws_vpc.main.id
  cidr_block = cidrsubnet(var.vpc_cidr, 4, count.index)
  tags = local.tags
}