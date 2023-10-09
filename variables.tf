variable "owner" {
  description = "GitHub owner used to configure the provider"
  type        = string
  default     = ""
}

variable "github_token" {
  description = "GitHub access token used to configure the provider"
  type        = string
  sensitive   = true
}

variable "bot_user_name" {
  type        = string
  description = "Bot user name"
}
