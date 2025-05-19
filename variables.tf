# ECR Variables

variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
}

# VPC Variables

variable "aws_region" {
  description = "AWS region"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR block range."
  type        = string
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets."
  type        = list(string)
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets."
  type        = list(string)
}

# EC2 Variables

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "instance_name" {
  description = "Instance Name"
  type        = string
}
variable "key_name" {
  description = "EC2 instance ssh key"
  type        = string
}

# Aurora PostgreSQL Variables
variable "db_subnet_group_name" {
  description = "Aurora DB Subnet group."
  type        = string
}

variable "cluster_identifier" {
  description = "Aurora DB cluster Identifier."
  type        = string
}

variable "db_username" {
  description = "Master user"
  type        = string
}

variable "db_password" {
  description = "Master password"
  type        = string
}

variable "instance_class" {
  description = "DB instances"
  type        = string
}

variable "instance_count" {
  description = "Number of instances in the cluster."
  type        = number
  default     = 1
}
