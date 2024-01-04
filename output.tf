output "storage_account_names" {
  value = azurerm_storage_account.storage[*].name 
}
