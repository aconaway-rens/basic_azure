resource "azurerm_virtual_network" "AARON_VN00" {
  name                = "AARON-VN00"
  location            = azurerm_resource_group.AARON_RG01.location
  resource_group_name = azurerm_resource_group.AARON_RG01.name
  address_space       = ["172.20.0.0/22"]
  tags                = var.tags
}

resource "azurerm_subnet" "AARON_SUB01" {
  name                 = "AARON-SUB01"
  resource_group_name  = azurerm_resource_group.AARON_RG01.name
  virtual_network_name = azurerm_virtual_network.AARON_VN00.name
  address_prefixes     = ["172.20.0.0/24"]
}

resource "azurerm_subnet" "AARON_SUB02" {
  name                 = "AARON-SUB02"
  resource_group_name  = azurerm_resource_group.AARON_RG01.name
  virtual_network_name = azurerm_virtual_network.AARON_VN00.name
  address_prefixes     = ["172.20.1.0/24"]
}

resource "azurerm_virtual_network" "AARON_VN10" {
  name                = "AARON-VN10"
  location            = azurerm_resource_group.AARON_RG01.location
  resource_group_name = azurerm_resource_group.AARON_RG01.name
  address_space       = ["172.21.0.0/22"]
  tags                = var.tags
}

resource "azurerm_subnet" "AARON_SUB11" {
  name                 = "AARON-SUB11"
  resource_group_name  = azurerm_resource_group.AARON_RG01.name
  virtual_network_name = azurerm_virtual_network.AARON_VN10.name
  address_prefixes     = ["172.21.0.0/24"]
}

resource "azurerm_subnet" "AARON_SUB12" {
  name                 = "AARON-SUB12"
  resource_group_name  = azurerm_resource_group.AARON_RG01.name
  virtual_network_name = azurerm_virtual_network.AARON_VN10.name
  address_prefixes     = ["172.21.1.0/24"]
}
