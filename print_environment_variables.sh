#!/usr/bin/env bash

echo "Using the following environment variables"

echo "   Source controlled environment variables..."

# Source controlled environment variables..."

# Global

echo "      TF_VAR_aws_region=$TF_VAR_aws_region"

# Resource Tags

echo "      TF_VAR_environment_name=$TF_VAR_environment_name"
echo "      TF_VAR_owner_name=$TF_VAR_owner_name"
echo "      TF_VAR_create_method=$TF_VAR_create_method"
echo "      TF_VAR_envrionment_type=$TF_VAR_envrionment_type"

# Security Group Names

echo "      TF_VAR_automation_security_group_name=$TF_VAR_automation_security_group_name"