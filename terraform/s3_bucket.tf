resource "aws_s3_bucket" "terraform_state_storage_s3" {
  bucket = "${var.backend_s3_bucket}"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  tags {
    environment                 = "${var.environment_name}"
    owner                       = "${var.owner_name}"
    create_method               = "${var.create_method}"
    envrionment_type            = "${var.envrionment_type}"
  }
}