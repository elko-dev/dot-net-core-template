# Create a resource group
resource "azurerm_resource_group" "middleware" {
  name     = "middleware-resources"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "middleware" {
  name                = "middleware-network"
  resource_group_name = azurerm_resource_group.middleware.name
  location            = azurerm_resource_group.middleware.location
  address_space       = ["10.0.0.0/16"]
}