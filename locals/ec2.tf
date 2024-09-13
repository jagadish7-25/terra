resource "aws_instance" "new_inst" {
  ami           = data.aws_ami.data_new.image_id
  count = length(var.instance_type)
  instance_type = element(var.instance_type,count.index)

  tags = {
    Name = var.instance_names[count.index]
  }
}

