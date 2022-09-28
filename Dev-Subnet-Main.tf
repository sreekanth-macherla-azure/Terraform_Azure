terraform {
  required_providers {
    azurerm = {
        version = "3.18.0"
        source = "hashicorp/azurerm"
    }
  }
}

provider "azurerm" {
   features {
   }
  }

  resource "azurerm_subnet" "subnet" {
    name = var.subnetname
    resource_group_name = var.rgname
    virtual_network_name = var.virtualnetworkname
    address_prefixes = var.addressprefix
    
  }
