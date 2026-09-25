output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "storage_account_blob_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}
