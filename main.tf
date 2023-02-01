module "vpc" {
    source                 = "./vendor/modules/vpc/"
    cidr_block             = var.vpc_cidr_block
    subnets                = var.subnets
    env                    = var.env
    AZ                     = var.AZ
    default_vpc_id         = var.default_vpc_id
    default_vpc_cidr       = var.default_vpc_cidr
    default_route_table_id = var.default_route_table_id


}

module "docdb" {
    source                 = "./vendor/modules/docdb/"
    env                    = var.env
    engine_version         = var.engine_version
    apps_subnet_ids        = local.apps_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
}

#output "out" {
#    value = module.vpc.out
#}

output "out" {
    value = module.vpc.out
}

output "out1" {
    value = local.apps_subnet_ids
}