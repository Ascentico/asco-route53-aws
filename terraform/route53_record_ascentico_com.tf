# Website

resource "aws_route53_record" "www_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "www.${aws_route53_zone.ascentico_com.name}"
  type    = "A"
  ttl     = "3600"
  records = ["82.71.62.199"]
}

resource "aws_route53_record" "mail_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "mail.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["mail.office365.com"]
}

# Exchange Online

resource "aws_route53_record" "root_mx_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "ascentico.com"
  type    = "MX"
  ttl     = "3600"
  records = ["0 ascentico-com.mail.protection.outlook.com"]
}

resource "aws_route53_record" "root_spf_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "ascentico.com"
  type    = "TXT"
  ttl     = "3600"
  records = ["v=spf1 include:spf.protection.outlook.com -all"]
}

resource "aws_route53_record" "autodiscover_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "autodiscover.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["autodiscover.outlook.com"]
}

# Skype for Business

resource "aws_route53_record" "sip_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "sip.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["sipdir.online.lync.com"]
}

resource "aws_route53_record" "lyncdiscover_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "lyncdiscover.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["webdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sip_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "_sip._tls"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 443 sipdir.online.lync.com"]
}

resource "aws_route53_record" "srv_sipfederationtls_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "_sipfederationtls._tcp"
  type    = "SRV"
  ttl     = "3600"
  records = ["100 1 5061 sipfed.online.lync.com"]
}

# Mobile Device Management for Office 365

resource "aws_route53_record" "enterpriseregistration_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "enterpriseregistration.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseregistration.windows.net"]
}

resource "aws_route53_record" "enterpriseenrollment_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "enterpriseenrollment.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["enterpriseenrollment.manage.microsoft.com"]
}

# Amazon SES Verification

resource "aws_route53_record" "amazon_ses_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "_amazonses.${aws_route53_zone.ascentico_com.name}"
  type    = "TXT"
  ttl     = "3600"
  records = ["9dTTorcSlhJdoldGgS9lHXpVvkdtQDXA0XWqsu891Eo="]
}

# Amazon SES DKIM Settings

resource "aws_route53_record" "amazon_dkim_1_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "27cphjpxavdmjg2pqqofsftus7gzik5p._domainkey.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["27cphjpxavdmjg2pqqofsftus7gzik5p.dkim.amazonses.com"]
}

resource "aws_route53_record" "amazon_dkim_2_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "gnwn4ge23tdyksxgubuobeo2u4mmsthj._domainkey.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["gnwn4ge23tdyksxgubuobeo2u4mmsthj.dkim.amazonses.com"]
}

resource "aws_route53_record" "amazon_dkim_3_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "a3ypnok26jj74bi5kbd7r7nle7a6fm7n._domainkey.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["a3ypnok26jj74bi5kbd7r7nle7a6fm7n.dkim.amazonses.com"]
}