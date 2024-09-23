resource "aws_vpc" "main" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "expense-2"
  }
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  count = length(var.cidr)
  cidr_block = each.value
  availability_zone = var.avz[count.index]

  tags = {
    Name = each.key
  }
}

