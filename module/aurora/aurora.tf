resource "aws_rds_cluster" "deep-aurora" {

cluster_identifier = var.identifier
engine = var.engine
engine_version = var.engine_version
master_username = var.master_username
master_password = var.master_password
skip_final_snapshot = var.skip_final_snapshot
backup_retention_period = var.backup_retention_period
db_subnet_group_name = var.db_subnet_group_name


}

resource "aws_rds_cluster_instance" "deep_aurora_1" {

identifier = "aurora-cluster-1"
cluster_identifier = aws_rds_cluster.deep-aurora.id
instance_class = "db.t3.medium"
engine = aws_rds_cluster.deep-aurora.engine


}
