# Root-level variables
# Root-level variables
project_name = "devops-infra"
aws_region   = "ap-south-1"

# VPC Module
public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

# 🆕 Add this line to fix the AZ error:
azs = ["ap-south-1a", "ap-south-1b"]

# ECS Task Images
frontend_image = "public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-frontend:560fa5c"
backend_image  = "public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-backend:f4cb7a8"




# ALB Module
# These values will be fetched using outputs from modules (no need to hardcode)

# ECS Module
# These also come from outputs. Example (commented for now):
# alb_listener_arn        = module.alb.listener_arn
# execution_role_arn      = module.iam.execution_role_arn
# ecs_security_group_id   = module.alb.security_group_id
