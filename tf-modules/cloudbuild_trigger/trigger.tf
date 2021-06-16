resource "google_cloudbuild_trigger" "cloudbuild-trigger" {
  provider    = google
  name        = var.trigger_name
  description = var.description

  github {
    name  = var.github_repo
    owner = var.github_owner
    push {
      branch = "^${var.branch_name}$"
    }
  }

  included_files = var.included_files

  ignored_files = var.ignored_files

  filename = var.filename

  substitutions = var.substitutions
}
