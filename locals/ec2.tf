resource "aws_instance" "new_inst" {
  ami           = data.aws_ami.data_new.image_id
  count = length(var.instance_type)
  instance_type = var.instance_names[count.index] == "mysql" ? "t3.micro" : "t2.micro"

  tags = {
    Name = var.instance_names[count.index]
  }
}

