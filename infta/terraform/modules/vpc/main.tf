module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.1"

  name = var.project_name
  cidr = "10.0.0.0/16"

  azs            = var.azs                 
  public_subnets = var.public_subnets     

  enable_nat_gateway = false
  enable_vpn_gateway = false
  map_public_ip_on_launch  = true

  tags = {
    Project = var.project_name
  }
}
