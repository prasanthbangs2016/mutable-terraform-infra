module "vpc" {
  source = "./vendor/modules/vpc"
  cidr_block = var.vpc_cidr_block
}