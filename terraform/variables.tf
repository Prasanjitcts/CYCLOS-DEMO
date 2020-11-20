variable "Resource_group"  {}
variable  "location" {}
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "address_space" {}
variable "azurerm_virtual_network" {}


variable "azurerm_subnet1" {}
variable "azurerm_subnet2" {}
variable "azurerm_subnet3" {}
variable "address_prefix1" {}
variable "address_prefix2" {}
variable "address_prefix3" {}


variable "VM_NAME" {}
variable "vm_size" {}
variable "publisher" {}
variable "offer" {}
variable "sku" {}
variable "NSG_Name" {}
variable "inbound_port_ranges" {type = "string"}

variable "computer_name" {}
variable "admin_username" {}
variable "admin_password" {}
