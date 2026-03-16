package s3.security

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  not input.config.server_side_encryption_configuration
  msg := "S3 bucket must have server-side encryption enabled"
}

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  not input.config.versioning
  msg := "S3 bucket must have versioning enabled"
}

deny[msg] {
  input.resource_type == "aws_s3_bucket"
  input.config.public_access == true
  msg := "S3 bucket must not allow public access"
}