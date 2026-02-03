output "vnet_id" {
  value = azurerm_virtual_network.vnet.vnet_id
}

output "Vnet_name" {
  value = azurerm_virtual_network.vnet.Vnet_name
}

output "subnet_id" {
  value = try(azurerm_subnet.subnet[0].id, null)
  description = "Subnet ID (null if create_subnet=false)"
}
