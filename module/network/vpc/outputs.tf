output "vpc_id" {
  value = concat(aws_vpc.main[*].id, [""])[0]
}

output "subnet_ids" {
  value = aws_subnet.public[*].id
}
