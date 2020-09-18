
module "appservice" {
  source = "./appservice"

  resource_group_name     = "${var.resource_group_name}"
  resource_group_location = "${var.resource_group_location}"
  environment             = "${var.environment}"
  database_name           = "${var.database_name}"
  database_server_name    = "${var.database_server_name}"
  database_admin_user     = "${var.database_admin_user}"
  database_admin_password = "${var.database_admin_password}"

}
