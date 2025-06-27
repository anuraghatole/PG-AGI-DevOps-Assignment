provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source         = "./modules/vpc"
  project_name   = var.project_name
  azs            = var.azs
  public_subnets = var.public_subnets
}

module "iam" {
  source        = "./modules/iam"
  project_name  = var.project_name
}

module "alb" {
  source                = "./modules/alb"
  project_name          = var.project_name
  vpc_id                = module.vpc.vpc_id
  public_subnets        = module.vpc.public_subnet_ids
  ecs_security_group_id = module.vpc.ecs_security_group_id
}

module "ecs" {
  source                     = "./modules/ecs"
  project_name               = var.project_name
  vpc_id                     = module.vpc.vpc_id
  public_subnets             = module.vpc.public_subnet_ids
  alb_security_group_id      = module.alb.alb_security_group_id
  ecs_security_group_id      = module.vpc.ecs_security_group_id
  execution_role_arn         = module.iam.ecs_execution_role_arn
  frontend_image             = var.frontend_image
  backend_image              = var.backend_image
  frontend_target_group_arn  = module.alb.frontend_target_group_arn
  backend_target_group_arn   = module.alb.backend_target_group_arn
  alb_listener_arn           = module.alb.alb_listener_arn
}
