terraform {

  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.43.0"
    }
  }
  cloud {
    organization = "amitlohan"
    workspaces {
      name = "githubactions"
    }
  }
}


provider "azurerm" {
  features {}
  skip_provider_registration = true

}

resource "azurerm_resource_group" "rg" {
  name     = "811-9f409b0b-provide-continuous-delivery-with-gith"
  location = "West US"

}

resource "azurerm_storage_account" "storgamit" {
        name = "atorageamitoct23"
        location = "westus"
        account_replication_type = "LRS"
        account_tier = "Standard"
        resource_group_name = azurerm_resource_group.rg.name

}