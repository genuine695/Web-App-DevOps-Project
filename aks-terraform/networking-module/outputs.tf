#outputs.tf

output "vnet_id" {
    description = "ID of the previously created Virtual Network"
    value = azurerm_virtual_network.vnet.id
}

output "control_plane_subnet_id" {
    description = "ID of control plane subnet within Virtual Network"
    value = azurerm_subnet.control_plane_subnet.id
}

output "worker_node_subnet_id" {
    description = "ID of worker node subnet within Virtual Network"
    value = azurerm_subnet.worker_node_subnet.id
}

output "networking_resource_group_name" {
    description = "The name of the Azure Resource Group"
    value = azurerm_resource_group.networking_rg.name
}

output "aks_nsg_id" {
    description = "The ID of the network security group."
    value = azurerm_network_security_group.aks_nsg.id
}
