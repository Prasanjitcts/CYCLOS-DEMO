Resource_group = "CyclosRG-test"
location = "West US2"
azurerm_virtual_network = "test-vnet"
address_space = "10.1.0.0/16"
subscription_id = "0157021e-46f8-4c63-9cd7-657099fff7e0"
client_id       = "86d2d3ae-75b9-4d0a-978a-27de7e9d098b"
client_secret   = "otSdy9e3~X-2-bUKAUAgwjzMvUwFASz_IM"
tenant_id       = "e0980f8d-6fc9-44f6-a33a-88dc827c15e6"


azurerm_subnet1 = "test-subnet1"
azurerm_subnet2 = "test-subnet2"
azurerm_subnet3 = "test-subnet3"

address_prefix1 = "10.1.1.0/24"
address_prefix2 = "10.1.2.0/24"
address_prefix3 = "10.1.3.0/24"



VM_NAME = "Test-VM"
vm_size = "Standard_B1ms"

publisher = "Canonical"
offer     = "UbuntuServer"
sku       = "18.04-LTS"
NSG_Name = "NSG"
inbound_port_ranges = "22"

computer_name  = "hostname"
admin_username = "testadmin"
admin_password = "Password1234!"
