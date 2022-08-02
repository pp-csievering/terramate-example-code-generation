generate_hcl "_terramate_generated_acr_resource_group.tf" {
  content {
    resource "azurerm_resource_group" "example" {
        name     = global.resource_group
        location = global.location
    }
  }
}