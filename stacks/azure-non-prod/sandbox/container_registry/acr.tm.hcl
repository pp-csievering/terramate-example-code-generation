generate_hcl "_terramate_generated_acr.tf" {
  content {
    resource "azurerm_container_registry" "acr" {
      name                = "cr${global.project}${global.environment}"
      resource_group_name = global.resource_group
      location            = global.location
      sku                 = "Premium"
      admin_enabled       = false
    }
  }
}