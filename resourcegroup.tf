resource "azurerm_storage_account" "Homework2024" {
count = length(var.storage_account_names)
name                     = var.storage_account_names[count.index]
resource_group_name      = azurerm_resource_group.Homework2024.name
location                 = azurerm_resource_group.Homework2024.location
account_tier             = "Standard"
account_replication_type = "GRS"
}
