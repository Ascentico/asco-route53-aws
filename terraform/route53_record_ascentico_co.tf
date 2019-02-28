# Website

resource "aws_route53_record" "www_ascentico_co" {
  zone_id = "${aws_route53_zone.ascentico_co.id}"
  name    = "www.${aws_route53_zone.ascentico_co.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["www.ascentico.com."]
}

# G Suite

resource "aws_route53_record" "root_mx_ascentico_co" {
  zone_id = "${aws_route53_zone.ascentico_co.id}"
  name    = "ascentico.co"
  type    = "MX"
  ttl     = "3600"
  records = ["1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 alt3.aspmx.l.google.com.",
    "10 alt2.aspmx.l.google.com."
  ]
}

resource "aws_route53_record" "root_gsuite_verification_ascentico_co" {
  zone_id = "${aws_route53_zone.ascentico_co.id}"
  name    = "ascentico.co"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=oBt-jAwlChwgMVmFSailQmQC4w15ABHCygO-dye43TY"]
}