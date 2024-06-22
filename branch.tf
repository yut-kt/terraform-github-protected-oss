resource "github_branch" "develop" {
  repository = github_repository.this.name
  branch     = "develop"
}

resource "github_branch_default" "develop" {
  repository = github_repository.this.name
  branch     = github_branch.develop.branch
}

resource "github_branch_protection" "main" {
  repository_id                   = github_repository.this.id
  pattern                         = "main"
  enforce_admins                  = true
  require_signed_commits          = true
  required_linear_history         = false
  require_conversation_resolution = true
  required_status_checks {
    strict = true
  }
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
    require_last_push_approval      = true
  }
}

resource "github_branch_protection" "develop" {
  repository_id                   = github_repository.this.id
  pattern                         = "develop"
  enforce_admins                  = true
  require_signed_commits          = true
  required_linear_history         = true
  require_conversation_resolution = true
  required_status_checks {
    strict = true
  }
  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
    require_last_push_approval      = true
  }
}

