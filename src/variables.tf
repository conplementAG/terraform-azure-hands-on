variable "subscription_id" {}
variable "tenant_id" {}
variable "client_id" {}
variable "client_secret" {}

variable "location" {
  description = "Which location"
  default     = "westeurope"
}

variable "env" {
	type	= string
	default = "Sandbox"
}