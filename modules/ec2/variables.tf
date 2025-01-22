variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for EC2"
  type        = list(string)
}

variable "security_group_id" {
  description = "Security group ID to attach to the instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
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

