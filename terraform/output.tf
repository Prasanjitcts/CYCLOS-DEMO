output "azurerm_virtual_network" {
  value = azurerm_virtual_network.main
}


output "azurerm_virtual_machine" {
  value = azurerm_virtual_machine.main
}

output "azurerm_public_ip" {
  value = azurerm_public_ip.main.ip_address
}