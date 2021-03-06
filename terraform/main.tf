resource "azurerm_resource_group" "resource_group" {
  name     = "KloudfuerdieWeltGruppe"
  location = "West Europe"
}

resource "azurerm_container_registry" "acr" {
  name                = "KloudfuerdieWeltCR"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  sku                 = "Standard"
  admin_enabled       = false
}