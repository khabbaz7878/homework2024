resource "azurerm_storage_account" "azurermmcit" {
  name                     = "${var.myname}storage${var.countNumber}"
  resource_group_name      = homework2024.name
  location                 = homework2024.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier=var.access_tier
  cross_tenant_replication_enabled = var.cross_tenant_replication_enabled
  tags = {
    environment = var.environment
  }
}
