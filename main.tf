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
    instance_count         = var.docdb_cluster_instance_count
    instance_class         = var.docdb_instance_class
    WORKSTATION_IP         = var.WORKSTATION_IP
}

module "rds" {
    source                 = "./vendor/modules/rds/"
    env                    = var.env
    rds_engine_version     = var.rds_engine_version
    db_subnet_ids          = local.db_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    rds_cluster_instance_count = var.rds_cluster_instance_count
    rds_instance_class      = var.rds_instance_class
    WORKSTATION_IP         = var.WORKSTATION_IP
}


module "elasticcache" {
    source                 = "./vendor/modules/elasticcache/"
    env                    = var.env
    redis_engine_version     = var.redis_engine_version
    db_subnet_ids          = local.db_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    redis_instance_count = var.redis_instance_count
    redis_instance_class      = var.redis_instance_class
}

module "rabbitmq" {
    source                 = "./vendor/modules/rabbitmq/"
    env                    = var.env
    db_subnet_ids          = local.db_subnet_ids
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    instance_type          = var.instance_type
    WORKSTATION_IP         = var.WORKSTATION_IP

}


module "alb" {
    source                 = "./vendor/modules/alb/"
    env                    = var.env
    vpc_id                 = module.vpc.vpc_id
    vpc_cidr_block         = var.vpc_cidr_block
    public_subnets      = local.public_subnet_ids
    app_subnets             = local.apps_subnet_ids
    PUBLIC_DNS_RECORD       = var.PUBLIC_DNS_RECORD

}

#output "out" {
#    value = module.vpc.out
#}

#output "out" {
#    value = module.vpc.out
#}
#
#output "out1" {
#    value = local.apps_subnet_ids
#}