terraform {
  backend "s3" {
    bucket         = "fisayo-mesh-state-2026"
    key            = "prod/global-mesh.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}