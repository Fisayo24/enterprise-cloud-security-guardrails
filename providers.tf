terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# 1. The Default Provider (Optional but good practice)
provider "aws" {
  region = "us-east-1"
}

# 2. The Virginia Alias
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

# 3. The Ireland Alias
provider "aws" {
  alias  = "ireland"
  region = "eu-west-1"
}