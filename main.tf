# ==========================================
# 1. VIRGINIA INFRASTRUCTURE (US-EAST-1)
# ==========================================

# Deploy the VPC Network in Virginia
module "vpc_virginia" {
  source              = "./modules/vpc"
  providers           = { aws = aws.virginia }
  vpc_name            = "global-mesh-virginia"
  vpc_cidr            = "10.1.0.0/16"
  public_subnet_cidrs = ["10.1.1.0/24", "10.1.2.0/24"]
  azs                 = ["us-east-1a", "us-east-1b"]
}

# Deploy a Server in the Virginia Network
resource "aws_instance" "va_server" {
  provider      = aws.virginia
  ami           = "ami-0453ec754c44f9a4a" # Amazon Linux 2023 (us-east-1)
  instance_type = "t2.micro"
  subnet_id     = module.vpc_virginia.public_subnet_ids[0]

  tags = {
    Name = "global-mesh-va-server"
  }
}

# ==========================================
# 2. IRELAND INFRASTRUCTURE (EU-WEST-1)
# ==========================================

# Deploy the VPC Network in Ireland
module "vpc_ireland" {
  source              = "./modules/vpc"
  providers           = { aws = aws.ireland }
  vpc_name            = "global-mesh-ireland"
  vpc_cidr            = "10.2.0.0/16"
  public_subnet_cidrs = ["10.2.1.0/24", "10.2.2.0/24"]
  azs                 = ["eu-west-1a", "eu-west-1b"]
}

# Deploy a Server in the Ireland Network
resource "aws_instance" "ire_server" {
  provider      = aws.ireland
  ami           = "ami-03cc8375791cb8bcf" # Amazon Linux 2023 (eu-west-1)
  instance_type = "t2.micro"
  subnet_id     = module.vpc_ireland.public_subnet_ids[0]

  tags = {
    Name = "global-mesh-ire-server"
  }
}