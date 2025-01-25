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
output "ec2_instance_ids" {
  description = "EC2 instances ID"
  value       = module.ec2.ec2_instance_ids
}

output "ec2_instance_public_ips" {
  description = "EC2 Instance Public IP"
  value       = module.ec2.ec2_instance_public_ips
}
output "aurora_db_cluster_name" {
  description = "Aurora DB cluster name"
  value       = module.aurora_postgres.cluster_identifier
}

output "aurora_db_cluster_endpoint" {
  description = "Endpoint for Aurora DB cluster"
  value       = module.aurora_postgres.endpoint
}

output "aurora_db_cluster_reader_endpoint" {
  description = "Reader endpoint for Aurora DB cluster"
  value       = module.aurora_postgres.reader_endpoint
}
