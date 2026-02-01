variable "resource_group_name" {
  type        = string
  description = "Name of the existing resource group"
}

variable "storage_account_prefix" {
  type        = string
  default     = "stacc"
  description = "Prefix for storage account name (will get a short random suffix). Must keep overall name <= 24 chars."
}

variable "account_tier" {
  type    = string
  default = "Standard"
}

variable "account_replication_type" {
  type    = string
  default = "LRS"
}

variable "containers" {
  type        = list(string)
  description = "List of blob container names to create"
  default     = ["data", "logs", "backup"]
}

variable "container_access_type" {
  type    = string
  default = "private"
}
