# Website

resource "aws_route53_record" "www_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "www.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["ascentico-public.s3-website-eu-west-1.amazonaws.com"]
}

resource "aws_route53_record" "mail_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "mail.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["ghs.googlehosted.com."]
}

resource "aws_route53_record" "calendar_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "calendar.${aws_route53_zone.ascentico_com.name}"
  type    = "CNAME"
  ttl     = "3600"
  records = ["ghs.googlehosted.com."]
}

resource "aws_route53_record" "statuscode_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "statuscode.${aws_route53_zone.ascentico_com.name}"
  type    = "A"
  ttl     = "3600"
  records = ["82.71.62.199"]
}

resource "aws_route53_record" "api_statuscode_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "api.statuscode.${aws_route53_zone.ascentico_com.name}"
  type    = "A"
  ttl     = "3600"
  records = ["82.71.62.199"]
}

# G Suite

resource "aws_route53_record" "root_mx_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "ascentico.com"
  type    = "MX"
  ttl     = "3600"
  records = ["1 aspmx.l.google.com.",
             "5 alt1.aspmx.l.google.com.",
             "5 alt2.aspmx.l.google.com.",
             "10 alt3.aspmx.l.google.com.",
             "10 alt2.aspmx.l.google.com."
            ]
}

# Amazon SES Verification

resource "aws_route53_record" "amazon_ses_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "_amazonses.${aws_route53_zone.ascentico_com.name}"
  type    = "TXT"
  ttl     = "3600"
  records = ["9dTTorcSlhJdoldGgS9lHXpVvkdtQDXA0XWqsu891Eo="]
}

resource "aws_route53_record" "gsuite_dkim_ascentico_com" {
  zone_id = "${aws_route53_zone.ascentico_com.id}"
  name    = "google._domainkey.${aws_route53_zone.ascentico_com.name}"
  type    = "TXT"
  ttl     = "3600"
  records = [
    "v=DKIM1; k=rsa; p=MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AM\"\"IIBCgKCAQEAkksMB/Mu4y9hlQb+Dojp6uRnKCJ3Wd3nrTdRS0xq\"\"pN1VacKl2aOxw5jHQLdcZg7w0vaM2Mc0BuxpMSyIBPzzf5woyY1\"\"p9mMwkiS62Vi0mfX0xh4hHo23bRWJzxUpTYAidx0csv3260TysS\"\"PJi6FSyPB5TJul0kTqeUqjJ9LjOaW59zwXNl9IwxcWnMawnAdJd\"\"bejUiNOe2HpW0wJbXPA4y6rZl2rtUAofe4S3RSNSth+bvRib/Ra\"\"BdbTyI7ZfKqNtBnWEw6bWCtvSYhJVDN6nMzUhRrpWN+EgWpxTCZ\"\"YdNssXH9f0J4ZDNuEliU2d6od3AFkqmQfTUFlQqa9yx9m/QIDAQ\"\"AB"]
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