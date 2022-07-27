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
   condition = global.environment != "dev"
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
         key                  =  "${global.environment}_${global.tenant}_${global.tenant_env}_${terramate.stack.path.basename}"
       }
     }
   }
 }
 generate_hcl "_terramate_generated_backend.tf" {
   condition = global.environment == "dev"
   content {
     terraform {
 
       # for the sake of the demo we define a local backend
       # the path is defined in the global config and
       # defaults to terraforms default
       # the default values of globals are defined in config.tm.hcl in this directory
       backend "azurerm" {
         resource_group_name  = "rg_chris_sandbox"
         storage_account_name = "satcsfstatedev"
         container_name       = "tfstate"
         key                  =  "${global.environment}_${global.tenant}_${global.tenant_env}_${terramate.stack.path.basename}"
       }
     }
   }
 }