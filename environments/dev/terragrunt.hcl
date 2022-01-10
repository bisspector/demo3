locals {
  environment = "dev"
  app_name = "test-app"
  aws_region = "eu-central-1"
  availability_zones_count = 2
}

inputs = {
  environment = local.environment
  app_name = local.app_name
  aws_region = local.aws_region
  availability_zones_count = local.availability_zones_count
}

generate "provider" {
  path = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
provider "aws" {
  region = "${local.aws_region}"
}
EOF
}
