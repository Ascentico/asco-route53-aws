resource "aws_route53_zone" "ascentico_co_uk" {
  name         = "ascentico.co.uk."

  tags {
    environment                 = "${var.environment_name}"
    owner                       = "${var.owner_name}"
    create_method               = "${var.create_method}"
    envrionment_type            = "${var.envrionment_type}"
  }

}