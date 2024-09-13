resource "aws_instance" "web" {
  ami           = data.aws_ami.data_new.id
  instance_type = "t2.micro"

  tags = {
    Name = "stat-lock"
  }
}