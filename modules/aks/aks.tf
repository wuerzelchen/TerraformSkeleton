resource "azurerm_kubernetes_cluster" "aks" {
  for_each = toset(var.location)
  name                = "${var.cluster_name}-${replace(each.value, " ", "")}"
  location            = each.value
  resource_group_name = "${var.rg_name}-${replace(each.value, " ", "")}"
  dns_prefix          = "${var.cluster_dns_prefix}-${replace(each.value, " ", "")}"

  agent_pool_profile {
    name            = "default"
    count           = var.node_count
    vm_size         = "Standard_D1_v2"
    os_type         = "Linux"
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }
}