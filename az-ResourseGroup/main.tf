provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
    name = var.location
    location = var.location
    tags = var.tags
}
