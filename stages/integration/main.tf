provider "azurerm" {
  version         = "=1.34.0"
}

locals {
  rg_name = "integration-rg"
}

module "resource_group" {
  source = "../../modules/rg"

  rg_name = local.rg_name
  location = [
    "North Europe"
  ]
}