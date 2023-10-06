module "virtual_machine" {

  source        = "./module/cresource"
  environment   = var.environment
  location      = var.location
  project_name  = var.project_name
  vm_hostname   = var.vm_hostname
  kv_rg_id      = module.key_vault.key_rg_id
  tags          = var.tags
  resource_vars = var.resource_vars
  kv_name       = module.key_vault.kv_name

}

module "storage" {
  source       = "./module/storage"
  environment  = var.environment
  location     = var.location
  project_name = var.project_name
  tags         = var.tags


}
module "key_vault" {
  source         = "./module/key"
  environment    = var.environment
  location       = var.location
  project_name   = var.project_name
  tags           = var.tags
  key_vault_vars = var.key_vault_vars
  #resource_vars = var.resource_vars
}

