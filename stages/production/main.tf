provider "azurerm" {
  version         = "=1.34.0"
}

locals {
  rg_name = "production-rg"
}

module "resource_group" {
  #it is better to have a separate repository for just your modules, for this showcase, I have it in the current repo
  source = "github.com/wuerzelchen/TerraformSkeleton//modules/rg?ref=v0.1"

  rg_name = local.rg_name
  location = [
    "West Europe",
    "East Asia"
  ]
}