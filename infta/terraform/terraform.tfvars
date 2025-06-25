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
