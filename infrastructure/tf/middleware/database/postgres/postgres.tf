resource "azurerm_postgresql_server" "server" {
  name                = "${var.database_server_name}"
  location            = "${var.resource_group_location}"
  resource_group_name = "${var.resource_group_name}"

  sku_name = "B_Gen5_2"

  storage_mb                   = 5120
  backup_retention_days        = 7
  geo_redundant_backup_enabled = false
  auto_grow_enabled            = true

  administrator_login          = "psqladminun"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "9.5"
  ssl_enforcement_enabled      = true
}

resource "azurerm_postgresql_database" "example" {
  name                = "${var.database_name}"
  resource_group_name = "${var.resource_group_name}"
  server_name         = azurerm_postgresql_server.server.name
  charset             = "UTF8"
  collation           = "English_United States.1252"
}
