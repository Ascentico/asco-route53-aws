resource "aws_route53_zone" "ascentico_xyz" {
  name         = "ascentico.xyz."

  tags {
    environment                 = "${var.environment_name}"
    owner                       = "${var.owner_name}"
    create_method               = "${var.create_method}"
    envrionment_type            = "${var.envrionment_type}"
  }

}