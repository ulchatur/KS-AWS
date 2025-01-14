output "vpc_id" {
  description = "VPC ID."
  value       = aws_vpc.main.id
}

output "public_subnets" {
  description = "Public subnets."
  value       = [for subnet in aws_subnet.public : subnet.id]
}

output "private_subnets" {
  description = "Private subnets."
  value       = [for subnet in aws_subnet.private : subnet.id]
}

output "public_security_group_id" {
  description = "Public security group."
  value       = aws_security_group.public.id
}

output "private_security_group_id" {
  description = "Private security group."
  value       = aws_security_group.private.id
}

output "public_route_table_id" {
  description = "Public route table ID."
  value       = aws_route_table.public.id
}

output "private_route_table_id" {
  description = "Private route table ID."
  value       = aws_route_table.private.id
}

