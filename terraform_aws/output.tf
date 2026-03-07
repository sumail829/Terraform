output "instance_public_ip" {
  value       = aws_instance.samir.public_ip
  description = "public ip of ec2 instance"
}
resource "local_file" "ansible_inventory" {
  content  = <<EOT
[vm]
${aws_instance.samir.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=samir.pem
EOT
  filename = "${path.module}/../ansible-training/inventory/inventory.ini"
}