variable "github_token" {
  type      = string
  sensitive = true
}

# Development Repo Variables
variable "dev_repository_name" {
  description = "Name of the Dev GitHub repository"
  type        = string
  default     = "development-repo"
}

variable "dev_repo_issues" {
  description = "Dev repo issues settings"
  type        = bool
  default     = true
}

variable "dev_discussions" {
  description = "Dev repo discussions settings"
  type        = bool
  default     = true
}

variable "dev_wiki" {
  description = "Dev repo wiki settings"
  type        = bool
  default     = true
}

# Production Repository Variables
variable "prod_repository_name" {
  description = "Name of the Production GitHub repository"
  type        = string
  default     = "production-repo"
}

variable "prod_branch_protection" {
  description = "Number of required approvals for production branch"
  type        = number
  default     = 2
}