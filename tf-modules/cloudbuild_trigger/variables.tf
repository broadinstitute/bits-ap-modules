variable "branch_name" {
  description = "The name of the github branch."
  type        = string
}
variable "description" {
  description = "The description of the trigger."
  type        = string
}
variable "disabled" {
  description = "Flag to determine if trigger is disabled.  disabled triggers will not automatically run but can still be manually run.  setting this to false means it is enabled, setting to true means disabled."
  type        = bool
  default     = false
}
variable "filename" {
  description = "The location of the cloudbuild yaml."
  default     = "cloudbuild.yaml"
  type        = string
}
variable "github_owner" {
  description = "Github owner that repo is part of"
  default     = "broadinstitute"
  type        = string
}
variable "github_repo" {
  description = "Github repo trigger is against"
  default     = null
  type        = string
}
variable "ignored_files" {
  description = "List of files/regex that the trigger will ignore changes on"
  type        = list(any)
  default     = null
}
variable "included_files" {
  description = "The files/folder that the trigger watches."
  type        = list(any)
  default     = null
}
variable "substitutions" {
  description = "Map of substitutions used by trigger"
  default     = null
  type        = map(any)
}
variable "trigger_name" {
  description = "The name of the trigger."
  type        = string
}
