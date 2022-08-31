# Output variables.

output "name" {
  description = "The Code Commit repository created in AWS"
  value       = aws_codecommit_repository.default.repository_name
}

output "id" {
  description = "The Code Commit id repository created in AWS"
  value       = aws_codecommit_repository.default.repository_id
}

output "arn" {
  description = "The Code Commit arn repository created in AWS"
  value       = aws_codecommit_repository.default.arn
}

output "clone_url_https" {
  description = "The URL to use for cloning the repository over HTTPS"
  value       = aws_codecommit_repository.default.clone_url_http
}

output "clone_url_ssh" {
  description = "The URL to use for cloning the repository over HTTPS"
  value       = aws_codecommit_repository.default.clone_url_ssh
}

output "default_branch" {
  description = "The Code Commit Default branch"
  value       = aws_codecommit_repository.default.default_branch
}