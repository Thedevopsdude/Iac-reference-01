output "vpc_arn" {
  value = aws_vpc.main.arn
}

output "subnet_arn" {
value =  aws_vpc.main.default_security_group_id
}