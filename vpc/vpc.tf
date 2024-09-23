resource "aws_vpc" "main" {
  cidr_block       = "172.31.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "expense-2"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block ="172.31.1.0/16"
  availability_zone = "us-east-1a"

  tags = {
    Name = "expense-2-public"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block ="172.31.2.0/16"
  availability_zone = "us-east-1b"

  tags = {
    Name = "expense-2-private"
  }
}

resource "aws_subnet" "database" {
  vpc_id     = aws_vpc.main.id
  cidr_block ="172.31.3.0/16"
  availability_zone = "us-east-1c"

  tags = {
    Name = "expense-2-database"
  }
}