resource_group_name = "terraform-root-rg"
location            = "East US"
storage_account_name = "terraformroot996262"

account_tier = "Standard"
account_replication_type = "LRS"
container_names = {
  public  = "blob"
  private = "private"
}

# cicd-fix: Added missing variables 'public' and 'private' to resolve CI errors
public  = "blob"
private = "private"

rcbipl  = "private"
cskipl  = "private"
dcipl   = "private"
environment = "production"
owner       = "terraform"
