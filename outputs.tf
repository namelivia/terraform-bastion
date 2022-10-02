output "ip" {
  value = aws_lightsail_instance.bastion_instance.public_ip_address
}
