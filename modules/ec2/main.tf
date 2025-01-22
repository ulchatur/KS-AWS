resource "aws_instance" "ec2_instance" {
  count = length(var.subnet_ids)

  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index]

  security_groups = [var.security_group_id] # Use public security group from VPC module

  tags = {
    Name = "${var.instance_name}-${count.index + 1}" # Instance names start from 1
  }
}

