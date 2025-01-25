variable "aws_region" {
  description = "AWS region"
}

variable "vpc_id" {
  description = "VPC ID for Aurora DB"
}

variable "public_subnet_id" {
  description = "Public subnet ID for NAT Gateway"
}

variable "private_subnet_ids" {
  description = "Private subnet IDs for Aurora DB"
}

variable "private_route_table_id" {
  description = "Private RT ID for NAT Gateway."
}

variable "db_subnet_group_name" {
  description = "DB subnet group name"
}

variable "cluster_identifier" {
  description = "Identifier for the Aurora DB"
}

variable "db_username" {
  description = "Master username"
}

variable "db_password" {
  description = "Master password"
}

variable "private_security_group_id" {
  description = "Security group ID"
}

variable "instance_class" {
  description = "DB instances"
  type        = string
}

variable "instance_count" {
  description = "Number of DB instances in the cluster."
  type        = number
  default     = 1
}
