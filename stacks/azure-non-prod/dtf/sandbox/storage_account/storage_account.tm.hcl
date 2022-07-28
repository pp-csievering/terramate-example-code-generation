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
    data "azurerm_subnet" "subnet" {
      name                 = "private_endpoints"
      virtual_network_name = "vnet-${global.tenant}-${global.tenant_env}-hub"
      resource_group_name  = "rg-${global.tenant}-${global.tenant_env}-vnet"
    }

    resource "azurerm_private_endpoint" "endpoint" {
      name                = "pep-${global.tenant}-${global.tenant_env}-sa"
      location            = global.location
      resource_group_name = global.resource_group
      subnet_id           = "${data.azurerm_subnet.subnet.id}"
    
      private_service_connection {
        name                           = "psc-${global.tenant}-${global.tenant_env}-sa"
        private_connection_resource_id = "${data.azurerm_subnet.subnet.id}"
        is_manual_connection           = false
        subresource_names              = [ "blob" ]
      }
    }
  }
}