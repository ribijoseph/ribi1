resource "azurerm_resource_group" "rg_run" {
  name     = "rg-${var.project_name}-${var.environment}-run"
  location = var.location
  tags     = var.tags
}

data "azurerm_key_vault" "key" {
  name                = var.kv_name
  resource_group_name = var.kv_rg_id


}

/*data "azurerm_key_vault_secret" "vm_secret" {
  name         = "localname"
  key_vault_id = data.azurerm_key_vault.key.id

}*/
resource "azurerm_windows_virtual_machine" "resource" {
  for_each              = toset(var.vm_hostname.resource)
  name                  = each.key
  admin_username        = "ribi"
  admin_password        = "Rhhhhio1@"
  resource_group_name   = azurerm_resource_group.rg_run.name
  location              = var.location
  size                  = var.resource_vars.size
 


  os_disk {
    name                 = "myOsDisk"
    caching              = "ReadWrite"
    storage_account_type = var.resource_vars.vmdisk_type
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-datacenter-azure-edition"
    version   = "latest"
  }


}



