resource "aws_instance" "expense" {
  ami           = "${data.aws_ami.latestdev.id}"
  count = length(var.instance_type)
  instance_type = element(var.instance_type,count.index)

  tags = {
    Name = var.instance_names[count.index]
  }
}