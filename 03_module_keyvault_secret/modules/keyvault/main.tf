locals {
  kv_secret_name = "kv-secret-name"
  kv_secret_value = "mySuperSecret!!!111"
}

data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "my_kv" {
  name                        = "tfazurehandson-${terraform.workspace}-kv"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = true
  tenant_id                   = var.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get", "List", "Set", "Delete", "Purge"
    ]
  }
}

resource "azurerm_key_vault_secret" "my_kv_secret" {
  name         = local.kv_secret_name
  value        = local.kv_secret_value
  key_vault_id = azurerm_key_vault.my_kv.id
}