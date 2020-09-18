variable "environment" {
  description = "The environment used for all resources"
}

variable "location" {
  description = "The Azure location where all resources should be created"
}

# Variable declaration for the resource group name of RT 
variable "resource_group_name" {

}

# Variable declaration for the resource group name of RT 
variable "resource_group_location" {

}

variable "database_name" {
  description = "Name of database"
}

variable "database_server_name" {
  description = "Name of database server"
}

variable "database_admin_user" {
  description = "Database admin user"
}

variable "database_admin_password" {
  description = "Database admin password"
}
locals {
  common_tags = {
  }
}
