output "public_ip_ec2" {
  value = module.terraform_aws_ec2.public_ip_ec2
  sensitive = true
}
output "ec2_id" {
  value = module.terraform_aws_ec2.ec2_id
}
output "ec2_arn" {
  value = module.terraform_aws_ec2.ec2_arn
}
output "ec2_ami" {
  value = module.terraform_aws_ec2.ec2_ami
}
output "ec2_instanceType" {
  value = module.terraform_aws_ec2.ec2_instanceType
}