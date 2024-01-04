provider "azurerm" {
 features {}
}

variable "homework2024" {
 default = [
    "firstnamemcitlastname1",
    "firstnamemcitlastname2",
    "firstnamemcitlastname3",
    "firstnamemcitlastname4",
    "firstnamemcitlastname5"
 ]
}

resource "azurerm_resource_group" "example" {
 name     = "homework20024-rg"
 location = "Canada East"
}

resource "azurerm_storage_account" "example" {
 for_each             = toset(var.homework2024)
 name                 = each.value
 resource_group_name = azurerm_resource_group.homework2024
 location             = azurerm_resource_group.canadaeast
 account_tier         = "Standard"
 account_replication_type = "LRS"
}
