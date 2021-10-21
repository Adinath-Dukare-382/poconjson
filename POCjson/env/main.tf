terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "config-demo2"
    storage_account_name = "globalstorageac"
    container_name       = "globalstoragecon2"
    key                  = "terraform-tfstate.tfstate"
  }
}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "example" {
  name     = "POCRg"
  location = "eastus"
}

resource "azurerm_app_service_plan" "example" {
  name                = "POC-appserviceplan"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
