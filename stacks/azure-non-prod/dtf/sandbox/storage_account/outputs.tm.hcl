generate_hcl "_terramate_generated_sa_outputs.tf" {
  content {
    output "account_id" {
      value = azurerm_storage_account.this.id
    }
    
    output "account_connection_string" {
      value = azurerm_storage_account.this.primary_connection_string
    }
    
    output "account_name" {
      value = azurerm_storage_account.this.name
    }
    output "private_ip" {
      value = azurerm_private_endpoint.endpoint.private_service_connection[0].private_ip_address
}
  }
}