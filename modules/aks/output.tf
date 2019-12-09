
output "aks_all" {
  value = "${azurerm_kubernetes_cluster.aks}"
}

output "kube_config" {
  value = values(azurerm_kubernetes_cluster.aks)[*].kube_config_raw
}