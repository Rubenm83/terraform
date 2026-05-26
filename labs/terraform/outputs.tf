output "development_repo" {
  description = "The name of the development repo"
  value       = github_repository.development.name
}

# Data source outputs
output "current_user" {
  description = "Current GitHub user name"
  value       = data.github_user.current.name
}

# Production repository outputs
output "production_repo_url" {
  description = "URL of the production repository"
  value       = github_repository.production.html_url
}

output "production_environment" {
  description = "Production environment name"
  value       = github_repository_environment.production.environment
}