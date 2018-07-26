variable "aws_access_key" {
  description = "The access key for AWS"
}
variable "aws_secret_key" {
  description = "The secret key for AWS"
}

# Region

variable "aws_region" {
  description = "The AWS region"
}

# Tags

variable "environment_name" {
  description = "The name for the resource"
}
variable "owner_name" {
  description = "The owner of the resource"
}
variable "create_method" {
  description = "How the resource was created"
}
variable "envrionment_type" {
  description = "Dev, Test, Acceptance, Load, Train, Pre-Prod and Production"
}

# Terraform State Storage

variable backend_s3_bucket {}
variable backend_key {}
variable backend_dynamo_state_lock {}