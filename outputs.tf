output "target_group_name" {
  description = "ALB Target Group name"
  value       = join("", data.aws_lb_target_group.default.*.name)
}

output "code_deploy_group_name" {
  description = "ALB Target Group name"
  value       = join("", aws_lb_target_group.code_deploy.*.name)
}

output "target_group_arn" {
  description = "ALB Target Group ARN"
  value       = join("", data.aws_lb_target_group.default.*.arn)
}

output "code_deploy_group_arn" {
  description = "ALB second Target Group ARN for Code deploy"
  value       = local.code_deploy_group_arn
}

output "target_group_arn_suffix" {
  description = "ALB Target Group ARN suffix"
  value       = join("", data.aws_lb_target_group.default.*.arn_suffix)
}