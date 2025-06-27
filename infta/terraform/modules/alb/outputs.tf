output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.alb.dns_name
}

output "alb_listener_arn" {
  description = "ARN of the ALB listener"
  value       = aws_lb_listener.http.arn
}

output "alb_security_group_id" {
  description = "Security group ID of the ALB"
  value       = aws_security_group.alb_sg.id
}

output "frontend_target_group_arn" {
  description = "ARN of the frontend target group"
  value       = aws_lb_target_group.frontend.arn
}

output "backend_target_group_arn" {
  description = "ARN of the backend target group"
  value       = aws_lb_target_group.backend.arn
}

output "frontend_url" {
  description = "Public URL for frontend service"
  value       = "http://${aws_lb.alb.dns_name}"
}

output "backend_url" {
  description = "Public URL for backend API service"
  value       = "http://${aws_lb.alb.dns_name}/api"
}
output "dns_name" {
  value = aws_lb.alb.dns_name
}
