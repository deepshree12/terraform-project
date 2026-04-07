data "aws_vpc" "main" {

id = "vpc-038012c6a80998784"

}

data "aws_subnet" "subnet_1" {

id = "subnet-0db475c4dee32357e"

}

data "aws_subnet" "subnet_2" {

id = "subnet-07925eaea0b4f022d"

}

data "aws_subnet" "subnet_3" {

id = "subnet-08d98c014b9dc2618"

}

resource "aws_db_subnet_group" "aurora-subnet-1" {

name = "aurora-subnet-1"
subnet_ids = [

data.aws_subnet.subnet_1.id,
data.aws_subnet.subnet_2.id,
data.aws_subnet.subnet_3.id

]

tags = {

name = "aurora-subnet-1"

}
}

module "deep" {

source = "./module/aurora"

identifier = var.identifier
master_username = var.master_username
master_password = var.master_password
engine = var.engine
engine_version = var.engine_version
skip_final_snapshot = var.skip_final_snapshot
backup_retention_period = var.backup_retention_period
db_subnet_group_name = aws_db_subnet_group.aurora-subnet-1.name
vpc_security_group_ids = [aws_security_group.aurora_security.id]
db_cluster_parameter_group_name = aws_rds_cluster_parameter_group.aurora_parameter.name
apply_immediatly = var.apply_immediatly
allow_major_upgrade = var.allow_major_upgrade
}

output "writer_endpoint" {

value = module.deep.writer-instance
description = "writer instance endpoint"
}

output "reader_endpoint" {

value = module.deep.reader_endpoint

}
