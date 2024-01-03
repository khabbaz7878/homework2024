resource "azurerm_storage_account" "mcit420zz5um" {
count = length(var.storage_account_names)
name                     = var.storage_account_names[count.index]
resource_group_name      = azurerm_resource_group.mcit420zz5um.name
location                 = azurerm_resource_group.mcit420zz5um.location
account_tier             = "Standard"
account_replication_type = "GRS"
}
