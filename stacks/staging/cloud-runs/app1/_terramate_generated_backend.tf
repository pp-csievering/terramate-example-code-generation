// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT
// TERRAMATE: originated from generate_hcl block on /stacks/backend.tm.hcl

terraform {
  backend "azurerm" {
    container_name       = "tfstate"
    key                  = "terramate_staging_app1"
    resource_group_name  = "rg_chris_sandbox"
    sas_token            = "sp=racwl&st=2022-07-21T18:56:36Z&se=2022-07-22T02:56:36Z&spr=https&sv=2021-06-08&sr=c&sig=ihCie5UE7jIKorBalgtHD2GYOUGJR%2F1g3kImB7e%2By6s%3D"
    storage_account_name = "sacstfstate"
  }
}
