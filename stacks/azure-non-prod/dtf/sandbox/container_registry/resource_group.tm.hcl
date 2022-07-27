generate_hcl "_terramate_generated__acr_resource_group.tf" {
  content {
    resource "azurerm_resource_group" "example" {
        name     = global.resource_group
        location = global.location
    }
  }
}