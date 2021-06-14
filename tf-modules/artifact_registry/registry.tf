resource "google_artifact_registry_repository" "repo" {
  provider      = google-beta
  location      = var.location
  repository_id = var.repo
  format        = "DOCKER"
}

data "google_iam_policy" "admin" {
  dynamic "binding" {
    for_each = var.bindings
    content {
      role    = binding.key
      members = binding.value
    }
  }
}

resource "google_artifact_registry_repository_iam_policy" "policy" {
  provider    = google-beta
  project     = google_artifact_registry_repository.repo.project
  location    = google_artifact_registry_repository.repo.location
  repository  = google_artifact_registry_repository.repo.name
  policy_data = data.google_iam_policy.admin.policy_data
}
