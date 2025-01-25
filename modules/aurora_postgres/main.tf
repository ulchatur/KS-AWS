# Elastic IP for NAT Gateway
resource "aws_eip" "nat_gateway_eip" {
  domain = "vpc"
}

# NAT Gateway in the public subnet
resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_eip.id
  subnet_id     = var.public_subnet_id
}

# Private route to NAT Gateway
resource "aws_route" "private_route_to_nat_gateway" {
  route_table_id         = var.private_route_table_id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.nat_gateway.id
}

# Aurora DB Subnet Group
resource "aws_db_subnet_group" "aurora_subnet_group" {
  name       = var.db_subnet_group_name
  subnet_ids = var.private_subnet_ids
}

# Aurora PostgreSQL Cluster
resource "aws_rds_cluster" "aurora_postgres" {
  cluster_identifier      = var.cluster_identifier
  engine                  = "aurora-postgresql"
  master_username         = var.db_username
  master_password         = var.db_password
  skip_final_snapshot     = true
  db_subnet_group_name    = aws_db_subnet_group.aurora_subnet_group.id
  vpc_security_group_ids  = [var.private_security_group_id]
  tags = {
    Name = var.cluster_identifier
  }
}

# Aurora PostgreSQL Instances
resource "aws_rds_cluster_instance" "aurora_instances" {
  count               = var.instance_count
  identifier          = "${var.cluster_identifier}-instance-${count.index + 1}"
  cluster_identifier  = aws_rds_cluster.aurora_postgres.id
  instance_class      = var.instance_class
  engine              = "aurora-postgresql"
  publicly_accessible = false
  tags = {
    Name = "${var.cluster_identifier}-instance-${count.index + 1}"
  }
}

