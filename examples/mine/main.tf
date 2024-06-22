terraform {
  required_version = "1.8.5"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "6.2.2"
    }
  }
}

provider "github" {}

### Init ###

# module "protected_oss" {
#   source                      = "yut-kt/protected-oss/github"
#   init                        = true # True when created for the first time.
#   repository_name             = "terraform-github-protected-oss"
#   repository_description      = "Terraform module to create a GitHub oss repository"
#   repository_license_template = "gpl-3.0"
# }

### After ###

module "protected_oss" {
  source                                            = "yut-kt/protected-oss/github"
  init                                              = false # True when created for the first time.
  repository_name                                   = "terraform-github-protected-oss"
  repository_description                            = "Terraform module to create a GitHub oss repository"
  repository_license_template                       = "gpl-3.0"
  protection_branch_required_status_checks_contexts = ["ci-check"]
}

