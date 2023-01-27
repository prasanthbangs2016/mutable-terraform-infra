module "vpc" {
    source = "./vendor/modules/vpc"
    cidr_block = 10.100.0.0/16
}