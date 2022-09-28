#Providing Version and source of terraform
terraform {
  required_providers {
    azurerm = {
        version = "3.18.0"
        source = "hashicorp/azurerm"

    }
  }
}
#Declare Provider of your cloud operator

provider "azurerm" {
    features  {

    }
}

#Main infrastruce code starts from here..!!

#Creation of Virtual network

resource "azurerm_virtual_network" "vnet" {

    name = var.vnetname
    resource_group_name = var.rgname
    location = var.location
    address_space = var.addressCIDR
    tags = {
        "Environment" = var.tags
        "CreatedBy" = "Sreekanth"
        "Created on" = "Date"
        "ManagedBy" = "CloudTeam"
    }
}

