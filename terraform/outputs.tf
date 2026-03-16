output "s3_bucket_arn" {
  description = "ARN of the security logs bucket"
  value       = aws_s3_bucket.security_logs.arn
}