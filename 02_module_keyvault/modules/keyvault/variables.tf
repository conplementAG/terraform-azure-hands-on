variable "resource_group_name" {
  type = string
}

variable "location" {
  type        = string
  description = "The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default     = "westeurope"
}

variable "tenant_id" {}
