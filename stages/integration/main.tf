provider "azurerm" {
  version         = "=1.34.0"
}

locals {
  rg_name = "integration-rg"
}

module "resource_group" {
  source = "github.com/wuerzelchen/TerraformSkeleton//modules/rg?ref=v0.1"

  rg_name = local.rg_name
  location = [
    "North Europe"
  ]
}