terraform{
    required_providers {
      azurerm =  {
        version = "3.18.0"
        source = "hashicorp/azurerm"

      }
    }
}

provider "azurerm" {
  features {
    
  }
}

#refer to a subnet
data "azurerm_subnet" "mysubnet" {
  name                 = var.subnet
  virtual_network_name = var.Vnet
  resource_group_name  = var.rgname
}
#create a public ip
resource "azurerm_public_ip" "testpublicip" {
 name = var.publicip
 location = var.location
 resource_group_name = var.rgname
 allocation_method = "Dynamic"
 }

# create a network interface
resource "azurerm_network_interface" "VNIC" {

    name = "vnictest"
    location = var.location
    resource_group_name = var.rgname
  
ip_configuration {
   name = "ipcon"
   subnet_id = "${data.azurerm_subnet.mysubnet.id}"
   private_ip_address_allocation = "Dynamic"
   public_ip_address_id = azurerm_public_ip.testpublicip.id
}

}

resource "azurerm_windows_virtual_machine" "VM" {

    name = var.VMname
    location = var.location
    resource_group_name = var.rgname
    size = var.VMsize
    admin_username = var.admin_username
    admin_password = var.admin_password

    network_interface_ids = [
        azurerm_network_interface.VNIC.id
    ]
  
  os_disk {
    caching = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
     publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = var.vm-sku
    version   = "latest"
  }
}

