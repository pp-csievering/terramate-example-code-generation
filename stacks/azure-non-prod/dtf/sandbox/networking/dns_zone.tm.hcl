generate_hcl "_terramate_generated_private_dns.tf" {
  content {
    resource "azurerm_private_dns_zone" "this" {
     name                = "privatelink.blob.core.windows.net"
     resource_group_name = global.resource_group
    }

# create link to vnet
    resource "azurerm_private_dns_zone_virtual_network_link" "this" {
      name                  = "vnet-link"
      resource_group_name   = var.rg_name
      private_dns_zone_name = azurerm_private_dns_zone.this.name
      virtual_network_id    = "/subscriptions/${data.azurerm_subscription.current.subscription_id}/resourceGroups/${global.resource_group}/providers/Microsoft.Network/virtualNetworks/vnet-${global.tenant}-${global.tenant_env}-hub"
    }
    # define outputs
    output "zone_id" {
      value = azurerm_private_dns_zone.this.id
    }
    
    output "zone_name" {
      value = azurerm_private_dns_zone.this.name
    }
  }
}