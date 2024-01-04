resource "azurerm_resource_group" "example" {
 name     = "homework20024-rg"
 location = "Canada East"
}
resource "azurerm_storage_account" "homework20024-rg" {
count = length(var.storage_account_names)
name                     = var.storage_account_names[count.index]
resource_group_name      = azurerm_resource_group.homework20024-rg.name
location                 = azurerm_resource_group.homework20024-rg.location
account_tier             = "Standard"
account_replication_type = "GRS"
}
