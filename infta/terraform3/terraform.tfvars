project_name           = "pg-agi-devops-assignment"
aws_region             = "us-east-1"

vpc_cidr               = "10.0.0.0/16"
public_subnet_cidrs    = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnet_cidrs   = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones     = ["us-east-1a", "us-east-1b"]

frontend_image         = "public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-frontend:f4cb7a8"
backend_image          = "public.ecr.aws/r3c4o3m2/pg-agi-devops-assignment-backend:f4cb7a8"

frontend_container_port = 3000
backend_container_port  = 8000

frontend_cpu            = 256
frontend_memory         = 512
backend_cpu             = 256
backend_memory          = 512

frontend_desired_count  = 1
backend_desired_count   = 1

alb_health_check_path   = "/"

backend_env_vars = {
  DB_HOST     = "your-db-host"
  DB_USER     = "your-db-user"
  DB_PASSWORD = "your-db-password"
}
