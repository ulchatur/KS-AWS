module "ecr" {
  source        = "./modules/ecr"
  repository_name = var.repository_name
}

module "vpc" {
  source         = "./modules/vpc"

  aws_region     = var.aws_region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
  private_subnets = var.private_subnets
}

module "ec2" {
  source           = "./modules/ec2"

  aws_region       = var.aws_region
  ami_id           = var.ami_id
  instance_type    = var.instance_type
  subnet_ids        = module.vpc.public_subnets
  instance_name    = var.instance_name
  security_group_id = module.vpc.public_security_group_id
  key_name         = var.key_name
}

module "aurora_postgres" {
  source                 = "./modules/aurora_postgres"

  aws_region             = var.aws_region
  vpc_id                 = module.vpc.vpc_id
  public_subnet_id       = module.vpc.public_subnets[0]
  private_subnet_ids     = module.vpc.private_subnets
  private_route_table_id = module.vpc.private_route_table_id
  db_subnet_group_name   = var.db_subnet_group_name
  cluster_identifier     = var.cluster_identifier
  db_username            = var.db_username
  db_password            = var.db_password
  private_security_group_id = module.vpc.private_security_group_id
  instance_class         = var.instance_class
  instance_count         = var.instance_count
}
