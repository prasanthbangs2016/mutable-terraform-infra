#output "out" {
#    value = module.vpc.out
#}


#output "out" {
#    value = module.vpc.out["apps"]["out"][*].id
#}




#locals {
#  apps_subnet_ids = module.vpc.out["apps"]["out"][*].id
#}


#locals {
#  apps_subnets_id = module.vpc.subnets["apps"]["out"][*].id
#  db_subnet_ids = module.vpc.subnets["db"]["out"][*].id
#  public_subnet_ids = module.vpc.subnets["public"]["out"][*].id
#}

locals {
  apps_subnet_ids = module.vpc.out["apps"].subnet_ids
  db_subnet_ids = module.vpc.out["db"].subnet_ids
  public_subnet_ids = module.vpc.out["public"].subnet_ids
}