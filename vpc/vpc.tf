resource "aws_vpc" "main" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "expense-2"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  for_each = var.cidr
  cidr_block = each.value
  availability_zone = "us-east-1a"

  tags = {
    Name = each.key
  }
}

