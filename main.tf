data "github_repositories" "repos" {
  query           = "org:${var.owner} archived:false"
  include_repo_id = true
}

resource "github_branch_protection" "main_branch_protection" {
  for_each      = toset(data.github_repositories.repos.names)
  repository_id = each.value
  pattern       = "main"
  required_pull_request_reviews {
    pull_request_bypassers = ["/${var.bot_user_name}"]
  }
}
