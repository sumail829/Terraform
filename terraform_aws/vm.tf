data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_instance" "samir" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.medium"
  subnet_id     = aws_subnet.main.id
  key_name      = aws_key_pair.samir_key.key_name
  root_block_device {
    volume_size = 32
  }

  vpc_security_group_ids = [aws_security_group.samir_sg.id]
  associate_public_ip_address = true
  tags = {
    Name = "samir"
  }
}

resource "aws_security_group" "samir_sg" {
  name   = "samir_sg"
  vpc_id = aws_vpc.samir.id
  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }
    ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "samir_sg"
  }
}

resource "null_resource" "run_ansible" {
  depends_on = [
    aws_instance.samir
  ]
  provisioner "local-exec" {
    command     = "ansible-playbook setup.yaml"
    working_dir = "../ansible-training"
  }
}



