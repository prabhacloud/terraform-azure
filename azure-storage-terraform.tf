provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=1.28.0"
}
resource "azurerm_resource_group" "testrg" {
  name     = "TerraformAzureUG"
  location = "northeurope"
}

resource "azurerm_storage_account" "testsa" {
  name                     = "prabha012"
  resource_group_name      = "${azurerm_resource_group.testrg.name}"
  location                 = "northeurope"
  account_tier             = "Standard"
  account_replication_type = "null"

  tags = {
    environment = "staging"
  }
}

resource "azurestack_virtual_network" "test" {
    name = "test-network"
    address
  
}
