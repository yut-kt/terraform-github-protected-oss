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

module "protected_oss" {
  source                 = "../../"
  repository_name        = "terraform-github-protected-oss"
  repository_description = "Terraform module to create a GitHub oss repository"
  repository_license_template = "gpl-3.0"
}
