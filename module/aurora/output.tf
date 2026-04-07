output "writer_endpoint" {

value = aws_rds_cluster_instance.writer.endpoint
description = "writter instance endpoint"
}

output "reader_endpoint" {

value = aws_rds_cluster_instance.reader.endpoint
description = "reader instance endpoint"

}
