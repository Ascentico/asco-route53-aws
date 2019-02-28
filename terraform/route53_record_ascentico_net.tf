# Website

resource "aws_route53_record" "www_ascentico_net" {
  zone_id = "${aws_route53_zone.ascentico_net.id}"
  name    = "www.${aws_route53_zone.ascentico_net.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["www.ascentico.com."]
}

# G Suite

resource "aws_route53_record" "root_mx_ascentico_net" {
  zone_id = "${aws_route53_zone.ascentico_net.id}"
  name    = "ascentico.net"
  type    = "MX"
  ttl     = "3600"
  records = ["1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 alt3.aspmx.l.google.com.",
    "10 alt2.aspmx.l.google.com."
  ]
}

resource "aws_route53_record" "root_gsuite_verification_ascentico_net" {
  zone_id = "${aws_route53_zone.ascentico_net.id}"
  name    = "ascentico.net"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=OHwqm6N_x1imLeH9A9-f4jIkwVkJ9sTZ-T3-WAK7cxc"]
}