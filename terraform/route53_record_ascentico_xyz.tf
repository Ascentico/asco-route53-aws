# Website

resource "aws_route53_record" "www_ascentico_xyz" {
  zone_id = "${aws_route53_zone.ascentico_xyz.id}"
  name    = "www.${aws_route53_zone.ascentico_xyz.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["www.ascentico.com."]
}

# G Suite

resource "aws_route53_record" "root_mx_ascentico_xyz" {
  zone_id = "${aws_route53_zone.ascentico_xyz.id}"
  name    = "ascentico.xyz"
  type    = "MX"
  ttl     = "3600"
  records = ["1 aspmx.l.google.com.",
    "5 alt1.aspmx.l.google.com.",
    "5 alt2.aspmx.l.google.com.",
    "10 alt3.aspmx.l.google.com.",
    "10 alt2.aspmx.l.google.com."
  ]
}

resource "aws_route53_record" "root_gsuite_verification_ascentico_xyz" {
  zone_id = "${aws_route53_zone.ascentico_xyz.id}"
  name    = "ascentico.xyz"
  type    = "TXT"
  ttl     = "3600"
  records = ["google-site-verification=f1R03Hxqg09GC0aG9qyQcH2bsxX76g60NcD5HwmZV28"]
}