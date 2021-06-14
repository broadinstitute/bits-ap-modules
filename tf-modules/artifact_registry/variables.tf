# IAM roles and members
variable "bindings" {
  type    = map(any)
  default = {}
}

variable "repo" {
  description = "artifact_registry_repo"
  type        = string
}

variable "location" {
  description = "Location"
  type        = string
  default     = "us"
}
