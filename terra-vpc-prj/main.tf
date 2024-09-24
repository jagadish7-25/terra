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