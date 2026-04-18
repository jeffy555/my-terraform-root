variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The location of the resource group"
  type        = string
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
}

variable "account_tier" {
  description = "The account tier for the storage account"
  type        = string
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
}

# cicd-fix: Corrected variable definition to resolve unsupported argument error
variable "container_names" {
  description = "A map of container names and their access types"
  type        = map(string)
}

variable "name" {
  description = "Value for name"
  type        = string
}
