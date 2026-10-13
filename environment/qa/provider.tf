terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "pintu11"
    storage_account_name = "tattu100"
    container_name       = "con99"
    key                  = "apple_terraform_state"
  }
}
provider "azurerm" {
  features {}
  subscription_id = "82725301-e172-4d2e-920e-a694092383e3"
}
