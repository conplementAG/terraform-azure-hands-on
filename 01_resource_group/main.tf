terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.75.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  features {}
}

resource "azurerm_resource_group" "my_rg" {
  name     = "tfazurehandson-${terraform.workspace}-rg-we"
  location = var.location
}
