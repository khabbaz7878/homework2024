resource "azurerm_storage_account" "homeworkexam2024" {
count = length(var.storage_account_names)
name                     = var.storage_account_names[count.index]
resource_group_name      = azurerm_resource_group.homeworkexam2024.name
location                 = azurerm_resource_group.homeworkexam2024.location
account_tier             = "Standard"
account_replication_type = "GRS"
}
