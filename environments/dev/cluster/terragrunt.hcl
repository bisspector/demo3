terraform {
  source = "../../../modules/cluster"
}

dependencies {
  paths = ["../init-build"]
}

dependency "ecr" {
  config_path = "../ecr"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  ecr_repo_url = dependency.ecr.outputs.ecr_repo_url
}
