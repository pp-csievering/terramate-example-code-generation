// TERRAMATE: GENERATED AUTOMATICALLY DO NOT EDIT
// TERRAMATE: originated from generate_hcl block on /stacks/providers.tm.hcl

provider "google" {
  project = "mineiros-terramate-staging"
  region  = "europe-north1"
}
terraform {
  required_providers {
    azurecaf = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
terraform {
  required_version = "~> 1.0"
}
