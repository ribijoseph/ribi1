terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

provider "azurerm" {
    
   features {}
   }


terraform {
    backend "azurerm" {
        resource_group_name ="state_file"
        storage_account_name ="ribistate"
        container_name = "new"
        
    }
  
}