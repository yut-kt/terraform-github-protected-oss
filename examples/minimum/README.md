# Minimum Example

Create minimum GitHub repository by mine terraform module.

## Usage

### Create a workflow to protect the main when the repository is created.

1. Create a repository according to the first example below.
2. A pull request from the feat/workflows branch to develop is automatically created in the repository.
3. Checkout feat/workflows branch and Signing commits `git commit -S --amend` and force push `git push -f origin HEAD`.
4. Have a third party approve the pull request.
5. Merge the pull request.
6. Create a pull request from develop to main.
7. Have a third party approve the pull request.
8. Merge the pull request.
9. The main branch is protected by GitHub Actions workflow.

```hcl
# required github provider setting
provider "github" {}

module "protected_oss" {
  source                 = "yut-kt/protected-oss/github"
  repository_name        = "terraform-test"
  repository_description = "Created by Terraform"
}
```

### How to run terraform

```shell
$ terraform init
$ terraform plan # Check the resources to be created.
$ terraform apply
```
