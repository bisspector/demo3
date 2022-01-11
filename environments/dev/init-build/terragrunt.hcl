terraform {
  source = "../../../modules/init-build"
}

dependency "ecr" {
  config_path = "../ecr"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  repo_url = dependency.ecr.outputs.ecr_repo_url
  working_dir = format("%s/../../../app", get_terragrunt_dir())
}
