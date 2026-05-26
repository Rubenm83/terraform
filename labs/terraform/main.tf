# Create development repository
resource "github_repository" "development" {
  name        = var.dev_repository_name
  description = "Primary Dev Repo for new apps"
  visibility  = "public"

  auto_init = true

  has_issues      = var.dev_repo_issues
  has_discussions = var.dev_discussions
  has_wiki        = var.dev_wiki

  allow_merge_commit = true
  allow_squash_merge = true
  allow_rebase_merge = true

  topics = ["terraform", "infrastructure-as-code"]
}

resource "github_branch_protection" "development" {
  repository_id = github_repository.development.node_id
  pattern       = "main"
}

resource "github_branch" "development" {
  repository = github_repository.development.name
  branch     = "main"
}

resource "github_branch_default" "development" {
  repository = github_repository.development.name
  branch     = github_branch.development.branch
}