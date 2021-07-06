output "policy" {
  description = "google_artifact_registry_repository_iam_policy"
  value       = google_artifact_registry_repository_iam_policy.policy
}
output "repo" {
  description = "google_artifact_registry_repository"
  value       = google_artifact_registry_repository.repo
}
