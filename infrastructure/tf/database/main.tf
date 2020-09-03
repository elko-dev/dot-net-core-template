# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.20.0"
  features {}
}

terraform {
  backend "azurerm" {
    // The backend configuration is created automatically during deployment.
  }
}
