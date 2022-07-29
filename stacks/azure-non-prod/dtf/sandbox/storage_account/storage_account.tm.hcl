generate_hcl "_terramate_generated_storage_account.tf" {
  content {

    resource "azurerm_storage_account" "this" {
        name                     = "sa${global.tenant}${global.tenant_env}"
        resource_group_name      = global.resource_group
        location                 = global.location
        account_tier             = "Standard"
        account_replication_type = "GRS"

        tags = global.tagblock
    }

  }
}