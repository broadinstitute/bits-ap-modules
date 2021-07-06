# IAM roles and members
variable "bindings" {
  default     = {}
  description = "iam bindings"
  type        = map(any)
}
variable "description" {
  default     = null
  description = "description of artifact registry"
  type        = string
}
variable "format" {
  default     = "DOCKER"
  description = "format of packages in the repository"
  type        = string
}
variable "kms_key_name" {
  default     = null
  description = "the cloud kms resource name"
  type        = string
}
variable "labels" {
  default     = null
  description = "Labels with user-defined metadata"
  type        = map(any)
}
variable "location" {
  default     = "us"
  description = "Location"
  type        = string
}
variable "project" {
  default     = null
  description = "ID of the project to use"
  type        = string
}
variable "repository_id" {
  description = "Name of the repository to create"
  type        = string
}
