terraform {
  backend "azurerm" {
    resource_group_name = "AICloudBuilder"
    storage_account_name = "spiritopsbackend"
    container_name = "test"
    key = "projects/my-terraform-root/dev/root-validation-20260925/terraform.tfstate"
    use_azuread_auth = true
  }
}
