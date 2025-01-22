output "ec2_instance_ids" {
  description = "EC2 instance IDs."
  value       = aws_instance.ec2_instance[*].id
}

output "ec2_instance_public_ips" {
  description = "EC2 instance public IPs."
  value       = aws_instance.ec2_instance[*].public_ip
}

