variable "project_name"       { type = string }
variable "vpc_id"             { type = string }
variable "public_subnets"     { type = list(string) }
variable "ecs_security_group_id" { type = string }
