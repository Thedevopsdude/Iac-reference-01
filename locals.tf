locals {
tags =  merge(var.vpc_tag, {Name="IaC-demo-vpc-${terraform.workspace}"}, {Location = "Bangalore-${terraform.workspace}"})

}