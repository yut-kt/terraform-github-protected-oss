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
  repository_name        = "terraform-test"
  repository_description = "Created by Terraform"
}
