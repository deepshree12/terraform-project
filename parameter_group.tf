resource "aws_rds_cluster_parameter_group" "aurora_parameter" {

name = "aurora-parameter-group"
family = "aurora-postgresql15"
description = "parameter group for the postgresql"

parameter  {

 name = "log_min_duration_statement"
 value = "1400"
 apply_method = "immediate"

}

parameter  {

 name = "max_connections"
 value = "200"
 apply_method = "pending-reboot"


}



}

