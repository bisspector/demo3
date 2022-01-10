terraform {
  source = "../../../modules/cluster"
}

dependencies {
  paths = ["../ecr"]
}

include "root" {
  path = find_in_parent_folders()
}

