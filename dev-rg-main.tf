terraform {
  required_providers {
    azurerm = {
      version = "3.18.0"
      source  = "hashicorp/azurerm"
    }

  }
}

provider "azurerm" {

  features {

  }
}

resource "azurerm_resource_group" "testrg" {

    name = var.rgname
    location = var.location
    
    tags = {
      "environment" = var.tags
    
  }
}

