resource "azurerm_resource_group" "name_statefile" {
  name     = "name-statefile"
  location = "Canada Central"
}

resource "azurerm_storage_account" "name_statefile" {
  name                     = "mccrackenyycNAMEstatefile"
  resource_group_name      = azurerm_resource_group.name_statefile.name
  location                 = azurerm_resource_group.name_statefile.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "exampletag"
  }
}

resource "azurerm_storage_container" "name_terraform" {
  name                  = "terraform"
  storage_account_name  = azurerm_storage_account.name_statefile.name
  container_access_type = "private"
}