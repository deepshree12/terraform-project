output "writer-instance" {

value = aws_rds_cluster.deep-aurora.endpoint
description = "writter instance endpoint"
}

output "reader_endpoint" {

value = aws_rds_cluster.deep-aurora.endpoint
description = "reader instance endpoint"

}
