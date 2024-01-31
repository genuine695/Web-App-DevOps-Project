# main.tf 

variable "aks_cluster_name" {
  description = "Name of the AKS cluster."
  type        = string
  default = "terraform-aks-cluster"
 
}

variable "aks_cluster_location" {
  description = "Azure region where the AKS cluster will be deployed."
  type        = string
  default = "UK South"

}

variable "dns_prefix" {
  description = "DNS prefix of cluster."
  type        = string
  default = "myaks-project"

}

variable "kubernetes_version" {
  description = "Kubernetes version the cluster will use."
  type        = string
  default = "1.26.6"
 
}

variable "service_principal_client_id" {
  description = "Client ID for the service principal associated with the cluster"
  type        = string
  default = "9d09d64d-2860-4450-bdb8-634146c2ed9d"

}

variable "service_principal_secret" {
  description = "Client Secret for the service principal."
  type        = string
  default = "Nzy8Q~.bjswJ-vgiboSF_xVB~lTQPC73ox4V2aKD"
 
}

# Output variables of networking-module are input variables for the following

variable "vnet_id" {
  description = "The ID of the created VNet."
  type        = string
  
}
variable "control_plane_subnet_id" {
  description = "The ID of the control plane subnet."
  type        = string
  
}

variable "worker_node_subnet_id" {
  description = "The ID of the worker node subnet."
  type        = string
  
}

variable "resource_group_name" {
  description = "The name of the Azure Resource Group."
  type        = string
  default = "aicore-webapp-devops-1"
}
