variable "init" {
  type        = bool
  description = "Whether the first time to create the repository or not"
  default     = true
}

variable "repository_name" {
  type        = string
  description = "GitHub repository name"
}

variable "repository_description" {
  type        = string
  description = "GitHub repository description"
}

variable "repository_homepage_url" {
  type        = string
  description = "GitHub repository homepage url"
  default     = null
}

variable "repository_gitignore_template" {
  type        = string
  description = "Use the [name of the template](https://github.com/github/gitignore) without the extension. For example, \"Haskell\""
  default     = null
}

variable "repository_license_template" {
  type        = string
  description = "Use the [name of the template](https://github.com/github/choosealicense.com/tree/gh-pages/_licenses) without the extension. For example, \"mit\" or \"mpl-2.0\""
  default     = null
}

variable "protection_branch_required_status_checks_contexts" {
  type        = list(string)
  description = "A list of contexts required for a branch to be protected"
  default     = []
}
