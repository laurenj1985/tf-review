output "developer_clone_info" {
  value = <<EOT
Login: ${data.github_user.current.login}
URL:
  HTTP: https://github.com/${data.github_user.current.login}/${github_repository.dev_repo.name}.git
  SSH: git@github.com:${data.github_user.current.login}/${github_repository.dev_repo.name}.git
EOT
}

