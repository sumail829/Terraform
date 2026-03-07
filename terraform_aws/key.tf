resource "tls_private_key" "rsa_4096_samir" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "samir_key" {
  key_name   = "samir_aws_key"
  public_key = tls_private_key.rsa_4096_samir.public_key_openssh
}

resource "local_file" "private_key" {
  content         = tls_private_key.rsa_4096_samir.private_key_pem
  filename        = "${path.module}/../ansible-training/samir.pem" //path.module = current directry
  file_permission = "0400"
}