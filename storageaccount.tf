resource "azurerm_storage_account" "storage" {
  count = length(local.homeworkexam2024)
  name = local.homeworkexam2024[count.index] 
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  
  account_tier = "Standard"
  account_replication_type = "LRS"

}
