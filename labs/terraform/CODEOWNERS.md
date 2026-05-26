# Repository Files
resource "github_repository_file" "development" {
  repository          = github_repository.development.name
  branch              = github_branch.development.branch
  file                = ".gitignore"
  content             = "**/*.tfstate"
  commit_message      = "Managed by Terraform"
  commit_author       = "Terraform User"
  commit_email        = "terraform@course.com"
  overwrite_on_create = true
}