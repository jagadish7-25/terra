resource "aws_route53_record" "new_route" {
  for_each = aws_instance.terra
  zone_id = "Z0399604BUWMX5L1H6Z0"
  name    = each.key == "frontend" ? var.dname : "${each.key}.${var.dname}" 
  type    = "A"
  ttl     = 1
  records = each.key == frontend ? [each.value.public_ip] : [each.value.private_ip]
  allow_overwrite = true
} 
