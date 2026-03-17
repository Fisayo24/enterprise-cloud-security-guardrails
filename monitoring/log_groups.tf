resource "aws_cloudwatch_log_group" "s3_logs" {
  name              = "/aws/s3/security-logs"
  retention_in_days = 30

  tags = {
    Environment = "dev"
    Project     = "enterprise-cloud-security-guardrails"
  }
}