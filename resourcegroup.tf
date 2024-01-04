resource "azurerm_resource_group" "example" {
 name     = "homework20024-rg"
 location = "Canada East"
}

resource "azurerm_storage_account" "storage" {
  count = 5
  name = "${lower(var.first_name)}${lower(var.last_name)}${count.index + 1}"
  resource_group_name = homework20024-rg.rg.name
  location = homework20024-rg.rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
}
