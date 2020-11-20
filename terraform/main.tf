
resource "azurerm_resource_group" "main" {
  name     = var.Resource_group
  location = var.location
}


# Create a Virtual Network
resource "azurerm_virtual_network" "main" {
  name                = var.azurerm_virtual_network
  address_space       = [var.address_space]
  location            = azurerm_resource_group.main.location
  resource_group_name = var.Resource_group
}

# Create a Subnet

resource "azurerm_subnet" "as1" {
  name                 = var.azurerm_subnet1
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = var.address_prefix1

}

resource "azurerm_subnet" "as2" {
  name                 = var.azurerm_subnet2
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = var.address_prefix2

}

resource "azurerm_subnet" "as3" {
  name                 = var.azurerm_subnet3
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefix       = var.address_prefix3

}

data "template_file" "script" {
  template = file("script.tpl")
}

# Render a multi-part cloud-init config making use of the part
# above, and other source files

# Create a Virtual Machine
resource "azurerm_virtual_machine" "main" {
  name                  = var.VM_NAME
  location              = azurerm_resource_group.main.location
  resource_group_name   = azurerm_resource_group.main.name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = var.vm_size
  

  storage_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = "latest"
  }

  storage_os_disk {
    name              = "${var.VM_NAME}-OS"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "StandardSSD_LRS"
    disk_size_gb      = 32
  }

  os_profile {
    computer_name  = var.computer_name
    admin_username = var.admin_username
    admin_password = var.admin_password
    custom_data = data.template_file.script.rendered
  }

/*  os_profile_windows_config {
    provision_vm_agent = true
  }
*/
  os_profile_linux_config {
    disable_password_authentication = false

  }


}


# Create a Network Interface
resource "azurerm_network_interface" "main" {
  name                = "${var.VM_NAME}-nic01"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {

    name                          = "ipconfiguration01"
    subnet_id                     = azurerm_subnet.as3.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.main.id
  }
}

# Create a Public IP
resource "azurerm_public_ip" "main" {
  name                = "${var.VM_NAME}-publicip01"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  allocation_method   = "Static"
}

# Create a network_security_group

resource "azurerm_network_security_group" "NSG" {
  name     = var.NSG_Name
  location = "${azurerm_resource_group.main.location}"
  resource_group_name  = "${azurerm_resource_group.main.name}"
  security_rule  {
    name                       = "ssh-access-rule"
    #security_group_names       = ["${azure_security_group.web.name}", "${azure_security_group.apps.name}"]
    direction                  = "Inbound"
    access                     = "Allow"
    priority                   = 200
    source_address_prefix      = "100.0.0.0/32"
    source_port_range          = "*"
    destination_address_prefix = "10.0.0.0/32"
    destination_port_range     = "22"
    protocol                   = "TCP"
    }
}
