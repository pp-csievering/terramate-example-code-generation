generate_hcl "_terramate_generated_sa_outputs.tf" {
  content {
    output "account_id" {
      value = azurerm_storage_account.this.id
    }
    
    output "account_connection_string" {
      value = azurerm_storage_account.this.primary_connection_string
      sensitive = true
    }
    
    output "account_name" {
      value = azurerm_storage_account.this.name
    }
  }
}