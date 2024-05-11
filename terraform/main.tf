resource "random_string" "random" {
  length  = 5
  special = false
  upper   = false
}

resource "azurerm_resource_group" "app_rg" {
  name     = "rg-${var.app_name}-${var.env}"
  location = var.azure_region
}