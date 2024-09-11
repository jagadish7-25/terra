resource "aws_security_group" "allow-ssh" {
  name        = "allow-ssh"
  description = "creating sg for terraform"

  tags = {
    Name = "all-sshh"
  }


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "terra" {
  ami                     = var.ami_id
  count = 3
  instance_type           = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]

  tags = var.instance_names[count.index]
  
}

output "public_ip" {
  value = aws_instance.terra.public_ip
} 