resource "azurerm_resource_group" "rg" {
  for_each = toset(var.location)

  name = "${var.rg_name}-${replace(each.value, " ", "")}"
  location = each.value
}
