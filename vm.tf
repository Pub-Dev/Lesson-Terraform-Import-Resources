resource "azurerm_windows_virtual_machine" "this" {
  name                = "vmpubdev"
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  size                = "Standard_D2as_v4"
  admin_username      = "vmpubdevadmin"
  admin_password      = "hBQfcxG2GThJt98H"

  network_interface_ids = [
    azurerm_network_interface.this.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter-gensecond"
    version   = "latest"
  }
}

resource "azurerm_windows_virtual_machine" "this2" {
  name                = "vmpubdev2"
  resource_group_name = data.azurerm_resource_group.this.name
  location            = data.azurerm_resource_group.this.location
  size                = "Standard_D2as_v4"
  admin_username      = "vmpubdevadmin"
  admin_password      = "hBQfcxG2GThJt98H"

  network_interface_ids = [
    azurerm_network_interface.this2.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-datacenter-gensecond"
    version   = "latest"
  }
}
