variable "environment" {
  default = "prod"
}

variable "location" {

  default = "centralindia"

}

variable "project_name" {
  default = "reef"
}

variable "tags" {
  default = {
    environment = "prod"
    email       = "ribi.j"
  }
}

variable "key_vault_vars" {
  default = {
    sku_name = "standard"

  }
}

variable "vm_hostname" {
  default = {
    resource = ["tindbui"]
  }
}


variable "resource_vars" {

  default = {
    keyvault_name = "key"
    size          = "Standard_D2s_v3"
    vmdisk_type   = "StandardSSD_LRS"

  }
}
