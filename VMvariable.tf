variable "rgname" {
  default = "testrg02"
  type = string
}

variable "location" {
    default = "centralindia"
    type = string
}

variable "Vnet" {
    default = "vnettest"
    type = string
  
}
variable "subnet" {
    default = "subnettest"
  
}
variable "publicip" {

    default = "terrpubip"
  
}

variable "VMname" {

    default = "VMtest01"
    type = string
  
}
variable "VMsize" {

    default = "Standard_F2"
  
}

variable "admin_username" {
    default = "azureuser"

  }

  variable "admin_password" {
    default = "P@ssw0rd@123"
    
  }
  variable "vm-sku" {

    default = "2016-Datacenter"
    type = string
    
  }
    
  
