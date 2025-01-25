output "cluster_identifier" {
  description = "Identifier for Aurora DB cluster."
  value       = aws_rds_cluster.aurora_postgres.cluster_identifier
}

output "endpoint" {
  description = "Endpoint for Aurora DB cluster."
  value       = aws_rds_cluster.aurora_postgres.endpoint
}

output "reader_endpoint" {
  description = "Reader endpoint for Aurora DB cluster"
  value       = aws_rds_cluster.aurora_postgres.reader_endpoint
}

