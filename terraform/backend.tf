terraform {
  backend "s3" {
    encrypt        = true
    bucket         = "terraform-remote-state-storage-s3-8a7681912be981"
    dynamodb_table = "terraform-remote-state-lock-dynamo-s3-8a7681912be981"
    region         = "eu-west-1"
    key            = "terraform-remote-state-s3-8a7681912be981.tfstate"
  }
}