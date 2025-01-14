output "vpc_id" {
  description = "VPC ID."
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "public subnets."
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "private subnets."
  value       = module.vpc.private_subnets
}

output "public_security_group_id" {
  description = "Public security group."
  value       = module.vpc.public_security_group_id
}

output "private_security_group_id" {
  description = "Private security group."
  value       = module.vpc.private_security_group_id
}
