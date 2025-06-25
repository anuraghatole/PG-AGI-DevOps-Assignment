variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "project_name" {
  description = "Prefix for naming AWS resources"
  type        = string
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
}

variable "frontend_image" {
  description = "Frontend Docker image"
  type        = string
}

variable "backend_image" {
  description = "Backend Docker image"
  type        = string
}
