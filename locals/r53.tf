resource "aws_route53_record" "new_route" {
  zone_id = local.zone_id
  name    = var.instance_names[count.index] == "frontend" ? local.dname : "${var.instance_names[count.index]}.${local.dname}"
  type    = "A"
  ttl     = 1
  records = [aws_instance.new_inst[count.index].private_ip]
  allow_overwrite = true
} 
