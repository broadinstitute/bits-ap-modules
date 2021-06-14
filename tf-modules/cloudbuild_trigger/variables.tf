variable "branch_name" {
  description = "The name of the github branch."
  type        = string
}
variable "container_name" {
  description = "The names used for a repo container image."
  default     = null
  type        = string
}
variable "container_tag" {
  description = "The tag used for a repo container image."
  default     = null
  type        = string
}
variable "cloudbuild_dir_path" {
  description = "The path for the directory for cloudbuild."
  default     = null
  type        = string
}
variable "description" {
  description = "The description of the trigger."
  type        = string
}
variable "dns_zone" {
  description = "The dns zone."
  default     = null
  type        = string
}
variable "filename" {
  description = "The location of the cloudbuild yaml."
  type        = string
}
variable "included_files" {
  description = "The files/folder that the trigger watches."
  type        = string
}
variable "repo_path" {
  description = "The path to repo."
  default     = null
  type        = string
}
variable "state_bucket" {
  description = "The terraform state bucket."
  default     = null
  type        = string
}
variable "trigger_name" {
  description = "The name of the trigger."
  type        = string
}
