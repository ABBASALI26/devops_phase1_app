output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_id" {
  description = "Public subnet ID"
  value       = aws_subnet.public.id
}

output "security_group_id" {
  description = "Application security group ID"
  value       = aws_security_group.app.id
}

output "ecr_repository_url" {
  description = "ECR repository URL"
  value       = aws_ecr_repository.app.repository_url
}

output "ec2_instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.app.id
}

output "ec2_public_ip" {
  description = "EC2 public IP address"
  value       = aws_instance.app.public_ip
}

output "ec2_private_ip" {
  description = "EC2 private IP address"
  value       = aws_instance.app.private_ip
}

output "iam_role_name" {
  description = "EC2 IAM role name"
  value       = aws_iam_role.ec2_ecr_role.name
}

output "iam_instance_profile" {
  description = "EC2 IAM instance profile"
  value       = aws_iam_instance_profile.ec2_profile.name
}
