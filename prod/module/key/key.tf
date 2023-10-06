resource "azurerm_resource_group" "rg_key" {
 name = "rg-${var.project_name}-${var.environment}-key"
  location = var.location
  tags = var.tags
}

data "azurerm_client_config" "current" {
  
}

resource "azurerm_key_vault" "key" {
    name = "rg-${var.project_name}-${var.environment}"
    location = var.location
    sku_name = var.key_vault_vars.sku_name
    resource_group_name = azurerm_resource_group.rg_key.name
    tenant_id = data.azurerm_client_config.current.tenant_id
  
}

output "key_rg_id" {
  value = azurerm_resource_group.rg_key.name
}

output "kv_name" {
  value = azurerm_key_vault.key.name
}