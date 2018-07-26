#!/usr/bin/env bash

# Source controlled environment variables..."

# Global

export TF_VAR_aws_region="eu-west-1"

# Resource Tags

export TF_VAR_environment_name="DNS"
export TF_VAR_owner_name="ASCO"
export TF_VAR_create_method="Terraform"
export TF_VAR_envrionment_type="Prod"

# Backend Terraform Storage

export TF_VAR_backend_s3_bucket="terraform-remote-state-storage-s3-8a7681912be981"
export TF_VAR_backend_key="terraform-remote-state-s3-8a7681912be981.tfstate"
export TF_VAR_backend_dynamo_state_lock="terraform-remote-state-lock-dynamo-s3-8a7681912be981"