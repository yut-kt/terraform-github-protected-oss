# terraform-github-protected-oss


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.8 |
| <a name="requirement_github"></a> [github](#requirement\_github) | >= 6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | >= 6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_branch.develop](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch.feat_workflows](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_branch_default.develop](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_default) | resource |
| [github_branch_protection.develop](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_branch_protection.main](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch_protection) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.workflow-check-pr-branch](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_pull_request.set-workflow-check-pr-branch](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_pull_request) | resource |
| [github_repository_tag_protection.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_tag_protection) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_init"></a> [init](#input\_init) | Whether the first time to create the repository or not | `bool` | `true` | no |
| <a name="input_repository_name"></a> [repository\_name](#input\_repository\_name) | GitHub repository name | `string` | n/a | yes |
| <a name="input_repository_description"></a> [repository\_description](#input\_repository\_description) | GitHub repository description | `string` | n/a | yes |
| <a name="input_repository_homepage_url"></a> [repository\_homepage\_url](#input\_repository\_homepage\_url) | GitHub repository homepage url | `string` | `null` | no |
| <a name="input_repository_gitignore_template"></a> [repository\_gitignore\_template](#input\_repository\_gitignore\_template) | Use the [name of the template](https://github.com/github/gitignore) without the extension. For example, "Haskell" | `string` | `null` | no |
| <a name="input_repository_license_template"></a> [repository\_license\_template](#input\_repository\_license\_template) | Use the [name of the template](https://github.com/github/choosealicense.com/tree/gh-pages/_licenses) without the extension. For example, "mit" or "mpl-2.0" | `string` | `null` | no |
| <a name="input_protection_branch_required_status_checks_contexts"></a> [protection\_branch\_required\_status\_checks\_contexts](#input\_protection\_branch\_required\_status\_checks\_contexts) | A list of contexts required for a branch to be protected | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
