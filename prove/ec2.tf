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

provisioner "file" {
  source      = "index.html"
  destination = "/tmp/index.html"
}
  provisioner "remote-exec" {
    inline = [
       "sudo yum install nginx -y",
       " sudo mv /tmp/index.html /usr/share/nginx/html/index.html",
       "sudo systemctl restart nginx"

       
    ]
  }
  

  
}

output "nginx" {
  value = aws_instance.terra.public_ip
}