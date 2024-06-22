resource "github_repository" "this" {
  name                        = var.repository_name
  description                 = var.repository_description
  homepage_url                = var.repository_homepage_url
  squash_merge_commit_title   = "PR_TITLE"
  squash_merge_commit_message = "PR_BODY"
  merge_commit_title          = "PR_TITLE"
  merge_commit_message        = "PR_BODY"
  allow_merge_commit          = true
  allow_squash_merge          = true
  allow_rebase_merge          = false
  delete_branch_on_merge      = true
  web_commit_signoff_required = true
  auto_init                   = true
  gitignore_template          = var.repository_gitignore_template
  license_template            = var.repository_license_template
  archive_on_destroy          = true
  vulnerability_alerts        = true
  security_and_analysis {
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }
  allow_update_branch = true
}

resource "github_repository_tag_protection" "this" {
  repository = github_repository.this.name
  pattern    = "v[0-9]*.[0-9]*.[0-9]*"
}
