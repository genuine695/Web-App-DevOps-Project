#variable.tf

variable "resource_group_name" {
    description = "The name of the resource group where Networking will be created"
    type = string
    default = "aicore-webapp-devops-1"
}

variable "location" {
    description = "The Azure region where the Networking will be deployed"
    type = string
    default = "UK South" #Default to UK South region
}

variable "vnet_address_space"{
    description = "Allocates a range of IP addressesto resources within the VNet"
    type = list(string)
    default = ["10.0.0/16"]
}

