resource "azurerm_resource_group" "state_file" {
    name = "state_file"
    location = var.location
    tags = var.tags
  
}
resource "azurerm_storage_account" "name" {
    name = "ribistate"
    account_tier = "Standard"
    location = var.location
    account_replication_type = "LRS"
    resource_group_name = azurerm_resource_group.state_file.name
  
}