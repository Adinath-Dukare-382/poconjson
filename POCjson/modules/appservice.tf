resource "azurerm_app_service" "example" {
#   name                = "example-app-service"
  for_each              = var.apps
  name                  = format("app-%s-%s",var.app_name,var.version)
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.plan_name.app_service_plan_id
}