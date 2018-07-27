# Website

resource "aws_route53_record" "www_ascentico_co_uk" {
  zone_id = "${aws_route53_zone.ascentico_co_uk.id}"
  name    = "www.${aws_route53_zone.ascentico_co_uk.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["www.ascentico.com"]
}