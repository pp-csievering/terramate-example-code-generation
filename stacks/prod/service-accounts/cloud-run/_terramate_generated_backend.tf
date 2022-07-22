// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT
// TERRAMATE: originated from generate_hcl block on /stacks/backend.tm.hcl

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terramate_prod_cloud-run"
    resource_group_name  = "rg_chris_sandbox"
    storage_account_name = "sacstfstate"
  }
}
