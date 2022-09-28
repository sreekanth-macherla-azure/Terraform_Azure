variable "vnetname" {
    default = "centralus"
    type = string  
}

variable "rgname" {

    default = "VnetRG"
    type = string
  
}
variable "location" {
    default = "centralus"  
    type = string
}
variable "addressCIDR" {

    default = ["10.0.0.0/16"]
    type = list(string)
}
variable "tags" {
    default = "Dev"
    type = string
  
}