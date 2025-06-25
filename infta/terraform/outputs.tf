output "alb_dns" {
  value       = module.alb.dns_name
  description = "The DNS name of the Application Load Balancer"
}

output "ecs_cluster_id" {
  value       = module.ecs.cluster_id
  description = "ARN of the ECS Cluster"
}
