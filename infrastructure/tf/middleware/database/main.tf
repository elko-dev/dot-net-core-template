
module "database" {
  source = "./postgres"

  resource_group_name     = "${var.resource_group_name}"
  resource_group_location = "${var.resource_group_location}"
  environment             = "${var.environment}"
  database_name           = "${var.database_name}"
  database_server_name    = "${var.database_server_name}"
}
