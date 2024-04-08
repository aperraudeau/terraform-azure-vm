output "azurerm_linux_virtual_machine_ip" {
  description = "IP Address of the new VM"
  value       = azurerm_linux_virtual_machine.vm.public_ip_address
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}