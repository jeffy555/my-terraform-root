terraform {
  backend "azurerm" {
    resource_group_name  = var.name
    storage_account_name = var.name
    container_name       = var.name
    key                  = "terraform.tfstate"
    use_azuread_auth     = true
  }
}

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