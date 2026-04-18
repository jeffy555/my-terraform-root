resource_group_name = "terraform-root-rg"
location            = "East US"
storage_account_name = "terraformroot996262"

name = "myresume-live-rg"

account_tier = "Standard"
account_replication_type = "LRS"
container_names = {
  public  = "blob"
  private = "private"
}
