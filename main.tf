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
# resource "azurerm_resource_group" "example" {
#   name     = "poconjson"
#   location = "eastus"
#   tags = {
#   env = "business"
#   }
# }

# resource "azurerm_app_service_plan" "example" {
#   name                = "POC-appserviceplan"
#   location            = azurerm_resource_group.example.location
#   resource_group_name = azurerm_resource_group.example.name

#   sku {
#     tier = "Standard"
#     size = "S1"
#   }
# }

module "name2" {
  source = "../modules"

  resource_group_name = var.resource_group_name
  location = var.location
  plan_id = var.plan_id
  plan_name = var.plan_name
  tags = var.tags
  apps = var.apps
}
