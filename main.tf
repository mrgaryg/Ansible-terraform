module "vpc" {
  source = "modules/vpc"
  primary_cidr = "172.20.0.0/16"
}

module "ci" {
  source = "modules/concourseCI"
  public_subnet_id = "${module.vpc.public_subnet_id}"
  vpc_id = "${module.vpc.vpc_id}"
  cidr_to_whitelist = "103.240.237.132/32"
}