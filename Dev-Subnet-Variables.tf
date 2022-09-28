variable "rgname" {
   default = "RGNAME"
   type = string
   
}
variable "location" {
    default = "centralus"
    type = string
  
}
variable "subnetname" {
    default = "subnettest"
    type = string
  
}
variable "virtualnetworkname" {
    default = "VNETTEST"
  
}

variable "addressprefix" {
    default = ["10.0.0.0/24"]
    type = list(string)
  
}
