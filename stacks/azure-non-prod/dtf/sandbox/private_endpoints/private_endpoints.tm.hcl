generate_hcl "_terramate_generated_private_endpoints.tf" {
  content {
    data "azurerm_subnet" "subnet" {
      name                 = "private_endpoints"
      virtual_network_name = "vnet-${global.tenant}-${global.tenant_env}-hub"
      resource_group_name  = "rg-${global.tenant}-${global.tenant_env}-vnet"
    }
    data "azurerm_storage_account" "sa" {
      name                = "sa${global.tenant}${global.tenant_env}"
      resource_group_name = "rg-${global.tenant}-${global.tenant_env}-sa"
    }

    resource "azurerm_private_endpoint" "storage_account" {
      name                = "pep-${global.tenant}-${global.tenant_env}-sa"
      location            = global.location
      resource_group_name = "rg-${global.tenant}-${global.tenant_env}-sa"
      subnet_id           = "${data.azurerm_subnet.subnet.id}"
    
      private_service_connection {
        name                           = "psc-${global.tenant}-${global.tenant_env}-sa"
        private_connection_resource_id = "${data.azurerm_storage_account.sa.id}"
        is_manual_connection           = false
        subresource_names              = [ "blob" ]
      }
    }
  }
}