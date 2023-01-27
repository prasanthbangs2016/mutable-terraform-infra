module "vpc" {
  source = "./vendor/module/vpc"
  cidr_block = var.cidr_block
}