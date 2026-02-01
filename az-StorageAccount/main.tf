provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}

resource "azurerm_storage_account" "sa" {
  name                     = lower(format("%s%s", var.storage_account_prefix, random_string.suffix.result))
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
}

resource "azurerm_storage_container" "containers" {
  for_each             = toset(var.containers)
  name                 = each.value
  storage_account_name = azurerm_storage_account.sa.name
  container_access_type = var.container_access_type
}
