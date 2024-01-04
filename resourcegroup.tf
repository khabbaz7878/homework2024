resource "azurerm_resource_group" "example" {
 name     = "homework20024-rg"
 location = "Canada East"
}
resource "azurerm_storage_account" "example" {
 for_each             = toset(var.homework2024-rg)
 name                 = each.value
 resource_group_name = azurerm_resource_group.homework2024-rg
 location             = azurerm_resource_group.canadaeast
 account_tier         = "Standard"
 account_replication_type = "LRS"
}
