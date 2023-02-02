#this value comes from dev-backend.tfvars(vpc_cidr_block)
variable "vpc_cidr_block" {}

variable "subnets" {}

variable "env" {}
variable "AZ" {}

variable "default_vpc_id" {}

variable "default_vpc_cidr" {}
variable "default_route_table_id" {}

variable "engine_version" {}

variable "docdb_cluster_instance_count" {}
variable "docdb_instance_class" {}

variable "rds_engine_version" {}
variable "rds_cluster_instance_count" {}
variable "rds_instance_class" {}


variable "redis_instance_class" {}
variable "redis_instance_count" {}
variable "redis_engine_version" {}


