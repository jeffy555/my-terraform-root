output "resource_group_id" {
  value = azurerm_resource_group.example.id
}

output "storage_account_id" {
  value = azurerm_storage_account.example.id
}

output "storage_account_blob_endpoint" {
  value = azurerm_storage_account.example.primary_blob_endpoint
}
output "app_service_plan_id" {
  value = azurerm_service_plan.app_service_plan.id
}

output "app_service_id" {
  value = azurerm_linux_web_app.app_service.id
}
