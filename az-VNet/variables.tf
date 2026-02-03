variable "resource_group_name" {
  description = "Exsiting Resource Group name"
  type = string
}

variable "location" {
  description = "The Azure location/region for the VNet"
  type = string
}

variable "vnet_name" {
  description = "Virtual Network Name"
  type = string
  default = "lab-vnet-01"
}

variable "address_space" {
  description = "The address space for the VNet"
  type = list(string)
  default = [ "10.20.0.0/16" ]
}

variable "subnet_name" {
    description = "Subnet Name"
    type = string
    default = "lab-subnet-01"
}

variable "subnet_prefixes" {
  description = "Subnet Prefixes"
  type = list(string)
  default = [ "10.20.1.0/24" ]
}

variable "create_subnet" {
  description = "Whether to cerate subnet"
  type = bool
  default = true
}

variable "tags" {
  description = "A map of tags to assign to the resource."
  type = map(string)
  default = {
    environment = "Terraform-Lab"
    managed-by  = "Terraform"
  }
}
