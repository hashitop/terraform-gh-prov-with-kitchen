# token variable
variable "github_token" {
  description = "github token"
}

# repo
variable "repo" {
  description = "repo"
  default     = "terraform-gh-example"
}

# Configure the GitHub Provider
provider "github" {
  token        = "${var.github_token}"
  organization = "mytesthashitoporg"
}

resource "github_repository" "example" {
  name        = "${var.repo}"
  description = "My awesome codebase"
}

output "git_repo_url" {
  description = "The url to github repository"
  value       = "https://github.com/mytesthashitoporg/${var.repo}"
}