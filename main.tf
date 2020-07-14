module "vpc" {
  source       = "./modules/vpc"
  primary_cidr = "172.20.0.0/16"
}

module "ec2" {
  source            = "./modules/ec2"
  public_subnet_id  = module.vpc.public_subnet_id
  vpc_id            = module.vpc.vpc_id
  cidr_to_whitelist = var.public_ip_to_whitelist
  instance_name = var.instance_name
}

