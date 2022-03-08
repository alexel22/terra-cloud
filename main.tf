terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
      # version = "<=2.0.0"
    }
  }
}

provider "azurerm" {
      version = "2.98.0"
      
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

# Create a Virtual Network 
resource "azurerm_virtual_network" "example" {
  name                = "vnet01-from-terraloud"
  resource_group_name = azurerm_resource_group.tenaris-rg.name
  location            = azurerm_resource_group.tenaris-rg.location
  address_space       = ["10.0.0.0/16"]
}
