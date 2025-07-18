resource "github_repository" "frontend_repo" {
  name        = "frontend"
  description = "Code for MTC"
  visibility  = "private"
  auto_init   = true

  depends_on = [github_repository.backend_repo]
}

resource "github_branch" "frontend_dev" {
  repository = github_repository.frontend_repo.name
  branch     = "development"
  source_branch = "main"
}

resource "github_repository" "backend_repo" {
  name        = "backend"
  description = "Code for MTC"
  visibility  = "private"
  auto_init   = true
}

resource "github_branch" "backend_dev" {
  repository = github_repository.backend_repo.name
  branch     = "development"
  source_branch = "main"
}
