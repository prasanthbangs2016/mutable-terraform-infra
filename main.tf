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
    db_subnet_ids        = local.db_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    instance_count         = var.docdb_cluster_instance_count
    instance_class         = var.docdb_instance_class
}

module "rds" {
    source                 = "./vendor/modules/rds/"
    env                    = var.env
    engine_version         = var.rds_engine_version
    db_subnet_ids          = local.db_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    instance_count         = var.rds_cluster_instance_count
    instance_class         = var.rds_instance_class
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