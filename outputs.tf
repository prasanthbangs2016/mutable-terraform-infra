output "app_subnets" {
  value = local.apps_subnet_ids
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "WORKSTATION_IP" {
  value = var.WORKSTATION_IP
}

output "vpc_cidr" {
  value = var.vpc_cidr_block
}

output "public_tg_arn" {
  value = module.alb.public_tg_arn
}