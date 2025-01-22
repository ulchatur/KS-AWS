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

