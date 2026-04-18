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

output "default_container_id" {
  description = "The ID of the default storage container"
  value       = azurerm_storage_container.containers["default"].id
}
