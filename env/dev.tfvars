#vpc
vpc_cidr_block = "10.100.0.0/16"

subnets = {
  public = {
    name = "public"
    subnet_cidr = ["10.100.0.0/24","10.100.1.0/24"]
    igw = true

  }
  apps = {
    name = "apps"
    subnet_cidr = ["10.100.2.0/24","10.100.3.0/24"]
    ngw = true
  }

  db = {
    name = "db"
    subnet_cidr = ["10.100.4.0/24","10.100.5.0/24"]
    ngw = true
  }
}

env = "dev"
AZ = ["us-east-1a", "us-east-1b"]

default_vpc_id = "vpc-03a02f6f0896489d5"
default_vpc_cidr = "172.31.0.0/16"
default_route_table_id = "rtb-017a8b0dd1b6f1fd1"


#Docdb

engine_version = "4.0.0"
docdb_cluster_instance_count = 1
docdb_instance_class = "db.t3.medium"


##RDS
rds_engine_version = "5.7.mysql_aurora.2.11.2"
rds_cluster_instance_count = 1
rds_instance_class = "db.t3.small"

#elasticcache
redis_instance_class = "cache.t3.micro"
redis_instance_count = 1
redis_engine_version = "6.2"


##rabbitmq

instance_type = "t3.micro"
WORKSTATION_IP = "172.31.0.22/32"

PUBLIC_DNS_RECORD = "dev.devopsppk.online"
