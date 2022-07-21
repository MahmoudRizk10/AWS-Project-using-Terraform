output "public_subnet_id_A" {
  value = aws_subnet.publicA.id
}
output "public_subnet_id_B" {
  value = aws_subnet.publicB.id
}
output "private_subnet_id_A" {
  value = aws_subnet.privateA.id
}
output "private_subnet_id_B" {
  value = aws_subnet.privateB.id
}
output "security_group_ssh" {
  value = aws_security_group.allow_ssh.id
}
output "security_group_ssh3000" {
  value = aws_security_group.allow_ssh3000.id
}