resource "azurerm_storage_account" "example" {
2 count = length(var.storage_account_names)
3 name                     = var.storage_account_names[count.index]
4 resource_group_name      = azurerm_resource_group.example.name
5 location                 = azurerm_resource_group.example.location
6 account_tier             = "Standard"
7 account_replication_type = "GRS"
8}
