# This file is part of Terramate Configuration.
# Terramate is an orchestrator and code generator for Terraform.
# Please see https://github.com/mineiros-io/terramate for more information.
#
# To generate/update Terraform code within the stacks
# run `terramate generate` from root directory of the repository.

##############################################################################
# Generate '_terramate_generated_backend.tf' in each stack
# All globals will be replaced with the final value that is known by the stack
# Any terraform code can be defined within the content block
generate_hcl "_terramate_generated_backend.tf" {
  content {
    terraform {

      # for the sake of the demo we define a local backend
      # the path is defined in the global config and
      # defaults to terraforms default
      # the default values of globals are defined in config.tm.hcl in this directory
      backend "azurerm" {
        resource_group_name  = "rg_chris_sandbox"
        storage_account_name = "sacstfstate"
        container_name       = "tfstate"
        key                  =  "${global.project}_${global.environment}_${terramate.stack.path.basename}"
        sas_token            = "sp=racwl&st=2022-07-21T18:56:36Z&se=2022-07-22T02:56:36Z&spr=https&sv=2021-06-08&sr=c&sig=ihCie5UE7jIKorBalgtHD2GYOUGJR%2F1g3kImB7e%2By6s%3D"
      }
    }
  }
}
