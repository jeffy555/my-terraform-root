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

variable "container_names" {
  description = "A map of container names and their access types"
  type        = map(string)
}

# cicd-fix: Removed unused variable 'name' to align with dev.terraform.tfvars

variable "environment" {
  description = "The environment for the deployment"
  type        = string
}

variable "owner" {
  description = "The owner of the resources"
  type        = string
}

# cicd-fix: Added missing variables 'public' and 'private' to resolve CI errors
variable "public" {
  description = "Value for public"
  type        = string
}

variable "private" {
  description = "Value for private"
  type        = string
}

variable "rcbipl" {
  description = "Value for rcbipl"
  type        = string
}

variable "cskipl" {
  description = "Value for cskipl"
  type        = string
}

variable "dcipl" {
  description = "Value for dcipl"
  type        = string
}
