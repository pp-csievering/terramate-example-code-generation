generate_hcl "_terramate_generated_storage_account.tf" {
  content {
    resource "azurerm_resource_group" "example" {
        name     = global.resource_group
        location = global.location
    }

    resource "azurerm_storage_account" "storage_account" {
        name                     = "${global.project}-${global.environment}-sa"
        resource_group_name      = global.resource_group
        location                 = global.location
        account_tier             = "Standard"
        account_replication_type = "GRS"

        tags = {
            environment = "sandbox"
        }
    }
  }
}