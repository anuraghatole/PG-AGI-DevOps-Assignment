variable "project_name" {}
variable "vpc_id" {}
variable "public_subnets" {
  type = list(string)
}

variable "execution_role_arn" {}
variable "ecs_security_group_id" {}
variable "alb_security_group_id" {}
variable "frontend_image" {}
variable "backend_image" {}

variable "frontend_target_group_arn" {
  description = "ARN of the frontend target group"
  type        = string
}

variable "backend_target_group_arn" {
  description = "ARN of the backend target group"
  type        = string
}

variable "alb_listener_arn" {
  description = "ARN of the ALB listener"
  type        = string
}
