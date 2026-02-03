resource "azure_virtual_network" "vnet" {
  name= var.Vnet_name
  location=var.location
  resource_group_name=var.resource_group_name
  adress_space= var.adress_space
  tags=var.tags
}

resource "azure_subnet" "subnet" {
    count = var.create_subnet ? 1 : 0
    name= var.subnet_name
    resource_group_name= var.resource_group_name
    virtual_network_name= azure_virtual_network.vnet.name
    address_prefixes= var.subnet_prifix
}
