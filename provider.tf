terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "sa1_test_eic_HaniBhavsar"
    storage_account_name = "storeststefile"
    container_name       = "statefile"
    key                  = "terraform.tfstate"
  }
}
}

provider "azurerm" {
  features {}
   skip_provider_registration = true 
}
