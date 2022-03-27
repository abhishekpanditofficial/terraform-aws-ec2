output "public_ip_ec2" {
  value = aws_instance.ec2_server.public_ip
  sensitive = true
}
output "ec2_id" {
  value = aws_instance.ec2_server.id
}
output "ec2_arn" {
  value = aws_instance.ec2_server.arn
}
output "ec2_ami" {
  value = aws_instance.ec2_server.ami
}
output "ec2_instanceType" {
  value = aws_instance.ec2_server.instance_type
}