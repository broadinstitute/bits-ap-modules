resource "google_cloudbuild_trigger" "cloudbuild-trigger" {
  provider    = google
  name        = var.trigger_name
  description = var.description

  github {
    name  = "infra20"
    owner = "broadinstitute"
    push {
      branch = "^${var.branch_name}$"
    }
  }

  included_files = [var.included_files]

  filename = var.filename

  substitutions = {
    _CONTAINER_NAME      = var.container_name
    _CONTAINER_TAG       = var.container_tag
    _CLOUDBUILD_DIR_PATH = var.cloudbuild_dir_path
    _DNS_ZONE            = var.dns_zone
    _REPO_PATH           = var.repo_path
    _STATE_BUCKET        = var.state_bucket
  }
}
