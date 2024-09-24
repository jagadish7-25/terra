resource "aws_vpc" "main" {
  cidr_block = var.cidr
  enable_dns_hostnames = var.dns_hostnames

  tags = merge(
    var.common_tags,
    var.Vpc_tags,
    {
        name= local.resource_name
    }

  )
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.main.id
tags = merge(
    var.common_tags,
    var.igw_tags,
    {
        Name = local.resource_name
    }
  )
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  count = lenght(var.pbsubnet_cidrs)
  cidr_block = var.pbsubnet_cidrs[count.index]
  availability_zone = var.avz[count.index]
  map_public_ip_on_launch = true
  tags = merge(
    var.common_tags,
    var.public_subnet_tags,
    {
        Name = "${local.resource_name}-public-${var.avz[count.index]}"
    }
  )
}


resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  count = lenght(var.prsubnet_cidrs)
  cidr_block = var.prsubnet_cidrs[count.index]
  availability_zone = var.avz[count.index]
  map_public_ip_on_launch = true
  tags = merge(
    var.common_tags,
    var.private_subnet_tags,
    {
        Name = "${local.resource_name}-public-${var.avz[count.index]}"
    }
  )
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  count = lenght(var.data_subnet_cidrs)
  cidr_block = var.data_subnet_cidrs[count.index]
  availability_zone = var.avz[count.index]
  map_public_ip_on_launch = true
  tags = merge(
    var.common_tags,
    var.data_subnet_tags,
    {
        Name = "${local.resource_name}-public-${var.avz[count.index]}"
    }
  )
}