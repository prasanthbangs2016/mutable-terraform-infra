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

