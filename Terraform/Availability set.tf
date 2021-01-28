resource "azurerm_availability_set" "main" {
  name                = "availability_set"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  managed             = "true"
  platform_update_domain_count = 20
  platform_fault_domain_count  = 3
}