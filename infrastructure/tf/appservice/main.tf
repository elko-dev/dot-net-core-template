provider "azurerm" {
  features {}
}

# terraform {
#   backend "azurerm" {
#     // The backend configuration is created automatically during deployment.
#   }
# }


resource "azurerm_resource_group" "main" {
  name     = "${var.environment}-middleware-resources"
  location = var.location
}

resource "azurerm_app_service_plan" "main" {
  name                = "${var.environment}-middleware-asp"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "main" {
  name                = "${var.environment}-middleware-appservice"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  app_service_plan_id = azurerm_app_service_plan.main.id

  site_config {
    dotnet_framework_version = "v4.0"
    remote_debugging_enabled = true
    remote_debugging_version = "VS2019"
  }
}