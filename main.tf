resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location

  tags = local.common_tags
}

resource "azurerm_storage_account" "main" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = local.common_tags
}

locals {
  common_tags = {
    environment = "production"
    owner       = "terraform"
  }
}

resource "azurerm_storage_container" "containers" {
  for_each = var.container_names
  name                  = each.key
  storage_account_name  = azurerm_storage_account.main.name
  container_access_type = each.value
}

output "resource_group_id" {
  description = "The ID of the resource group"
  value       = azurerm_resource_group.main.id
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = azurerm_storage_account.main.id
}

output "public_container_id" {
  description = "The ID of the public storage container"
  value       = azurerm_storage_container.containers["public"].id
}

output "private_container_id" {
  description = "The ID of the private storage container"
  value       = azurerm_storage_container.containers["private"].id
}