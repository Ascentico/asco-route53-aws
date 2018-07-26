# Website

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "www.${aws_route53_zone.ascentico.name}"
  type    = "A"
  ttl     = "300"
  records = ["82.71.62.199"]
}

# Exchange Online

resource "aws_route53_record" "root_mx" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "ascentico.com"
  type    = "MX"
  ttl     = "3600"
  records = ["0 ascentico-com.mail.protection.outlook.com"]
}

resource "aws_route53_record" "root_spf" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "ascentico.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["v=spf1 include:spf.protection.outlook.com -all"]
}

resource "aws_route53_record" "autodiscover" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "autodiscover.${aws_route53_zone.ascentico.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["autodiscover.outlook.com"]
}

# Skype for Business

resource "aws_route53_record" "sip" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "sip.${aws_route53_zone.ascentico.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["sipdir.online.lync.com"]
}

resource "aws_route53_record" "lyncdiscover" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "lyncdiscover.${aws_route53_zone.ascentico.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["webdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sip" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "_sip._tls"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 443 sipdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sipfederationtls" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "_sipfederationtls._tcp"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 5061 sipfed.online.lync.com"]
}

# Mobile Device Management for Office 365

resource "aws_route53_record" "enterpriseregistration" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "enterpriseregistration.${aws_route53_zone.ascentico.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseregistration.windows.net"]
}

resource "aws_route53_record" "enterpriseenrollment" {
  zone_id = "${aws_route53_zone.ascentico.id}"
  name    = "enterpriseenrollment.${aws_route53_zone.ascentico.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseenrollment.manage.microsoft.com"]
}