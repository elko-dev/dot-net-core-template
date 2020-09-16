variable "environment" {
  description = "The environment used for all resources"
}

variable "location" {
  description = "The Azure location where all resources should be created"
}

variable "azure-default-location" {
  default = "West Europe"
}
# Variable declaration for the resource group name of RT 
variable "resource_group_name" {

}

# Variable declaration for the resource group name of RT 
variable "resource_group_location" {

}


locals {
  common_tags = {
  }
}
