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
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
   ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

resource "aws_instance" "terra" {
  ami                     = "ami-0b4f379183e5706b9"
  instance_type           = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow-ssh.id]
 
  tags = {
    Name = "terra"
  }

  connection {
    type     = "ssh"
    user     = "centos"
    password = "DevOps321"
    host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
       "sudo yum install nginx -y",
       "sudo systemctl start nginx",
       "sudo rm -rf  /usr/share/nginx/html/*",
       "sudo cp index.html /usr/share/nginx/html/"
    ]
  }


  
}

output "nginx" {
  value = aws_instance.terra.public_ip
}