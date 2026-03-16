resource "aws_cloudwatch_log_group" "security_logs" {
  name              = "/aws/security/${var.project_name}"
  retention_in_days = 30
}

resource "aws_cloudwatch_metric_alarm" "s3_security_alarm" {
  alarm_name          = "${var.project_name}-s3-security-alert"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "NumberOfObjects"
  namespace           = "AWS/S3"
  period              = 300
  statistic           = "Average"
  threshold           = 1000
  alarm_description   = "Alert when object count exceeds threshold"
}