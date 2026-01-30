variable "location" {
    type = string
    default = "West Europe"
}

variable "state_rg_name" {
    type = string
    default = "rg-tfstate"
}

variable "container_name" {
  type = string
  default = "tfstate"
}

variable "Storage_prefix" {
  type = string
  default = "tfstate"
  description = "Storage account prefix (lowercase). A random suffix is added to make it globally unique"
}
