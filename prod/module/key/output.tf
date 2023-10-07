output "key_rg_id" {
  value = azurerm_resource_group.rg_key.name
}

output "kv_name" {
  value = azurerm_key_vault.key.name
}