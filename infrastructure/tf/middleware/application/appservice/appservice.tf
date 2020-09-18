
resource "azurerm_app_service_plan" "main" {
  name                = "${var.environment}-middleware-asp"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "main" {
  name                = "${var.environment}-middleware-appservice"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"
  app_service_plan_id = azurerm_app_service_plan.main.id
  https_only          = true
  site_config {
    dotnet_framework_version = "v4.0"
    remote_debugging_enabled = true
    remote_debugging_version = "VS2019"
  }

  connection_string {
    name  = "Database"
    type  = "PostgreSQL"
    value = "Server=${var.database_server_name}.postgres.database.azure.com;Database=middleware;Port=5432;User Id=${var.database_admin_user}@${var.database_server_name};Password=${var.database_admin_password};Ssl Mode=Require;"
  }
}
