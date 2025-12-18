resource "azurerm_resource_group" "AARON_RG01" {
  name     = "AARON-RG01"
  location = "eastus"
  tags     = var.tags
}
