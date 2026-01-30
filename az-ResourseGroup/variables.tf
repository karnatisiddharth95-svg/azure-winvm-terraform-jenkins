variable "rg_name" {
  type = string
  default = "rg-hamsi-terraform-lab"
}

variable "location" {
  type = string
  default = "West Europe"
}

variable "tags" {
  type = map(string)
  default = {
    "Environment" = "Development"
    owner       = "hamsi"
  }
}
