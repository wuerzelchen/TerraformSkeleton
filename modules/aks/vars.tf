variable "client_id" {
    description = "ClientId of the Service Principal"
    type = string
}

variable "client_secret" {
    description = "Secret of the Service Principal"
    type = string
}

variable "location" {
    description = "Location of the resource group"
    type = list(string)
}

variable "rg_name" {
    description = "Resource Group Name"
    type = string
}

variable "cluster_name" {
    description = "Name of the AKS Cluster"
    type = string
}

variable "cluster_dns_prefix" {
    description = "DNS Prefix of the Master API"
    type = string
}

variable "node_count" {
    description = "Count of worker nodes in the cluster"
    type= number
}