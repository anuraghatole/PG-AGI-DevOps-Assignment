variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "frontend_image" {
  description = "Frontend Docker image URI (with SHA/tag)"
}

variable "backend_image" {
  description = "Backend Docker image URI (with SHA/tag)"
  
}

variable "secrets" {
  type        = map(string)
  description = "Secrets to store in AWS Secrets Manager"
  default     = {}
}
