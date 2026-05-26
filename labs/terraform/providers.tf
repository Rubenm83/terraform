terraform {
  required_version = ">=1.13.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.5.0"
    }
  }
}

provider "github" {
  token = var.github_token
}