output "instance_id" {
  value = aws_instance.ec2host.id
}

output "secretsmanager_secret" {
  value = aws_secretsmanager_secret.secrettwo.id
}

output "secretsmanager_secret_version" {
  value = aws_secretsmanager_secret_version.version.id
}