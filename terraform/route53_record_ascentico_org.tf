# Website

resource "aws_route53_record" "www_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "www.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["www.ascentico.com"]
}

# Exchange Online

resource "aws_route53_record" "root_mx_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "ascentico.org"
  type    = "MX"
  ttl     = "3600"
  records = ["0 ascentico-org.mail.protection.outlook.com"]
}

resource "aws_route53_record" "root_spf_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "ascentico.org"
  type    = "TXT"
  ttl     = "3600"
  records = ["v=spf1 include:spf.protection.outlook.com -all"]
}

resource "aws_route53_record" "autodiscover_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "autodiscover.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["autodiscover.outlook.com"]
}

# Skype for Business

resource "aws_route53_record" "sip_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "sip.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["sipdir.online.lync.com"]
}

resource "aws_route53_record" "lyncdiscover_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "lyncdiscover.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["webdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sip_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "_sip._tls"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 443 sipdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sipfederationtls_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "_sipfederationtls._tcp"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 5061 sipfed.online.lync.com"]
}

# Mobile Device Management for Office 365

resource "aws_route53_record" "enterpriseregistration_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "enterpriseregistration.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseregistration.windows.net"]
}

resource "aws_route53_record" "enterpriseenrollment_ascentico_org" {
  zone_id = "${aws_route53_zone.ascentico_org.id}"
  name    = "enterpriseenrollment.${aws_route53_zone.ascentico_org.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseenrollment.manage.microsoft.com"]
}