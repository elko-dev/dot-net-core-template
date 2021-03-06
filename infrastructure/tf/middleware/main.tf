provider "azurerm" {
  features {}
}

# terraform {
#   backend "azurerm" {
#     // The backend configuration is created automatically during deployment.
#   }
# }


# module "database" {
#   source = "./database"
# }


# module "Resources" {
#   source = "./networking/Level-0/azure-resources/resource-layer"
#   # Resources/Service Enable or Disable 
#   rg_enable                = 1
#   vnet_enable              = 1
#   subnet_count             = 3
#   management_subnet_enable = 1
#   er_subnet_enable         = 1
#   nsg_enable               = 1
#   rt_enable                = 1
#   vnet_peering_enable      = 1

#   # Parameter Definition for the Azure Network Foundation components
#   resource_group_name     = "${var.resource_group_name}"
#   region                  = "${var.region}"
#   vnet_name               = "${var.vnet_name}"
#   vnet_address            = "${var.vnet_address}"
#   subnet_names            = "${var.subnet_names}"
#   subnet_range            = "${var.subnet_range}"
#   nsg_tier1_rules         = "${var.nsg_tier1_rules}"
#   nsg_tier2_rules         = "${var.nsg_tier2_rules}"
#   nsg_tier3_rules         = "${var.nsg_tier3_rules}"
#   nsg_name                = "${var.nsg_names}"
#   rt_name                 = "${var.rt_names}"
#   subnet_er               = "${var.subnet_er}"
#   subnet_er_range         = "${var.subnet_er_range}"
#   subnet_management       = "${var.subnet_management}"
#   subnet_management_range = "${var.subnet_management_range}"

#   # Parameter Definition for the Tag and Values
#   tagvalue    = "${var.tagvalue}"
#   environment = "${var.environment}"

# }



module "application" {
  source     = "./application"
  depends_on = [module.resource_group]

  environment             = "${var.environment}"
  location                = "${var.region}"
  resource_group_name     = "rg-${var.environment}-${var.resource_group_name}"
  resource_group_location = "${var.region}"
  database_name           = "${var.database_name}"
  database_server_name    = "middleware-server-${var.environment}"
  database_admin_user     = "${var.database_admin_user}"
  database_admin_password = "${var.database_admin_password}"


}

module "database" {
  source     = "./database"
  depends_on = [module.resource_group]

  environment             = "${var.environment}"
  resource_group_name     = "rg-${var.environment}-${var.resource_group_name}"
  resource_group_location = "${var.region}"
  database_name           = "${var.database_name}"
  database_server_name    = "middleware-server-${var.environment}"
  database_admin_user     = "${var.database_admin_user}"
  database_admin_password = "${var.database_admin_password}"

}

module "resource_group" {
  source              = "./common-modules/resource-group"
  resource_group_name = "${var.resource_group_name}"
  region              = "${var.region}"
  tagvalue            = "${var.tagvalue}"
  environment         = "${var.environment}"
}
