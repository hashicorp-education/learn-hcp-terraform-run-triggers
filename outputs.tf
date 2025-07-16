output "instance_hostname" {
  description = "Private DNS name of the EC2 instance."
  value       = aws_instance.app_server.private_dns
}
output "instance_ami" {
  description = "AMI used to create the EC2 instance."
  value       = aws_instance.app_server.ami
}