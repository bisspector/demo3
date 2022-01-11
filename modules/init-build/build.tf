data "aws_caller_identity" "current" {}

resource "null_resource" "build" {
  provisioner "local-exec" {
    command = "bash build.sh"
    working_dir = var.working_dir
    environment = {
      REPO_URL = var.repo_url
      TAG = var.image_tag 
      REGISTRY_ID = data.aws_caller_identity.current.account_id
      REPO_REGION = var.aws_region
      APP_NAME = var.app_name
      ENV_NAME = var.environment
    }
  }
}
