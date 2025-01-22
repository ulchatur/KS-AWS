variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID for EC2"
  type        = string
}

variable "instance_name" {
  description = "Name of EC2"
  type        = string
}
variable "key_name" {
  description = "EC2 Instance ssh key"
  type        = string
}
variable "aws_region" {
  description = "AWS region"
  type        = string
}

