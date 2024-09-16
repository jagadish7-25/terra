resource "aws_route53_record" "terra" {
  zone_id = var.zone_id
  name    = var.domain_name
  type    = "A"
  ttl     = 1
  records = [aws_instance.web.public_ip]
}