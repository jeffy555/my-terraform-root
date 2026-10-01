resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.region

  tags = merge(
    local.common_tags,
    {
      "Owner"      = "Jefferson"
      "CostCenter" = "spiritops-test"
    }
  )
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = var.region
  account_tier             = var.storage_account_sku
  account_replication_type = var.replication
  access_tier              = var.access_tier
  https_traffic_only_enabled = var.https_only
  min_tls_version          = var.min_tls_version
  allow_nested_items_to_be_public = var.allow_blob_public_access

  tags = merge(
    local.common_tags,
    {
      "Owner"      = "Jefferson"
      "CostCenter" = "spiritops-test"
    }
  )
}
resource "azurerm_service_plan" "app_service_plan" {
  name                = var.service_plan_name
  location            = var.app_region
  resource_group_name = azurerm_resource_group.example.name
  os_type             = "Linux"
  sku_name            = var.service_plan_sku
  worker_count        = var.app_service_worker_count

  tags = local.common_tags
}

resource "azurerm_linux_web_app" "app_service" {
  name                = var.app_service_name
  location            = var.app_region
  resource_group_name = azurerm_resource_group.example.name
  service_plan_id     = azurerm_service_plan.app_service_plan.id

  site_config {
    application_stack {
      node_version = var.runtime
    }
    minimum_tls_version = var.app_minimum_tls_version
  }

  https_only = var.https_only

  tags = local.common_tags
}
resource "azurerm_postgresql_flexible_server" "spiritopstestpsql" {
  name                = "spiritopstestpsql"
  location            = var.postgresql_region
  resource_group_name = azurerm_resource_group.example.name
  administrator_login = "psqladmin"
  administrator_password_wo = var.postgresql_admin_password
  administrator_password_wo_version = 1

  sku_name = "B_Standard_B1ms"
  version  = "16"

  storage_mb = 32768

  backup_retention_days    = 7
  geo_redundant_backup_enabled = false

  tags = local.common_tags
}
