module "vpc" {
  source = "modules/vpc"
  primary_cidr = "172.20.0.0/16"
}