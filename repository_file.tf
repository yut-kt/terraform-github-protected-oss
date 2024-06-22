resource "github_branch" "feat_workflows" {
  repository = github_repository.this.name
  branch     = "feat/workflows"
}

resource "github_repository_file" "workflow-check-pr-branch" {
  repository          = github_repository.this.name
  branch              = github_branch.feat_workflows.branch
  file                = ".github/workflows/check-pr-branch.yml"
  content             = file("${path.module}/files/check-pr-branch.yml")
  commit_message      = "Set workflow files created by Terraform"
  commit_author       = "TerraformUser"
  commit_email        = "terraform@example.com"
  overwrite_on_create = true
}

resource "github_repository_pull_request" "set-workflow-check-pr-branch" {
  base_repository = github_repository.this.name
  base_ref        = github_branch.develop.branch
  head_ref        = github_branch.feat_workflows.branch
  title           = "Set workflow files created by Terraform"
  body            = "This PR sets workflow files created by Terraform."
  depends_on      = [github_repository_file.workflow-check-pr-branch]
}
