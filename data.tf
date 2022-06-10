data "azurerm_resource_group" "this" {
  name = "pubdev"
}

data "azurerm_virtual_network" "this" {
  name                = "vnetpubdev"
  resource_group_name = data.azurerm_resource_group.this.name
}

data "azurerm_subnet" "this" {
  name                 = "default"
  virtual_network_name = data.azurerm_virtual_network.this.name
  resource_group_name  = data.azurerm_resource_group.this.name
}

data "azurerm_public_ip" "this" {
  name                = "vmpubdev-ip"
  resource_group_name = data.azurerm_resource_group.this.name
}
