variable "aws_region" {
  description = "AWS region for resource deployment"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR Block range."
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
