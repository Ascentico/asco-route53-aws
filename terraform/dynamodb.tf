resource "aws_dynamodb_table" "dynamodb_terraform_state_lock" {
  name = "${var.backend_dynamo_state_lock}"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags {
    name = "DynamoDB Terraform State Lock Table"
  }
}