variable "environment" {
  description = "The environment used for all resources"
}

variable "location" {
  description = "The Azure location where all resources should be created"
}

variable "azure-default-location" {
  default = "West Europe"
}

locals {
  common_tags = {
  }
}
