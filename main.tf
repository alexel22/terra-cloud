terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
      version = "<=2.0.0"
      
      subscription_id = var.subscriptionID
      client_id = var.clientID
      client_secret = var.clientSecret
      tenant_id = var.tenantID
      features {}
}

# Create a resource group
resource "azurerm_resource_group" "tenaris-rg" {
  name     = var.rg_name
  location = var.location
    tags = {
        APP = "IaC"
        ENV = "DEV"
    }
}
