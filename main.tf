terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }
}

provider "azurerm" {
    features {
    # version       = ">0.2"
    # subscription  = "{var.subscription_id}"
    # client_id     = "${var.client_secret}"
    # cliente_secret= "${var.client_secret}"
    # tenant_id     = "${var.tenant_id}"
    }
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = var.rg
  location = var.location
    tags = {
        APP = "IaC"
        ENV = "DEV"
    }
}