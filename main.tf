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
