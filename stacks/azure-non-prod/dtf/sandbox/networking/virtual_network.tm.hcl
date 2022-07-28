generate_hcl "_terramate_generated_hub.tf" {
  content {
    resource "azurerm_virtual_network" "hub" {
      name                = "vnet-${global.tenant}-${global.tenant_env}-hub"
      location            = global.location
      resource_group_name = global.resource_group
      address_space       = global.hub_network.vnet_cidr

      tags= global.tagblock
    }
    resource "azurerm_subnet" "this" {
      name                 = "private_endpoints"
      resource_group_name  = global.resource_group
      virtual_network_name = azurerm_virtual_network.hub.name
      address_prefixes     = global.hub_network.private_endpoints_cidr
      enforce_private_link_endpoint_network_policies = true
    

    }
  }
}