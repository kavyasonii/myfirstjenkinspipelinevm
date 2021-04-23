terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = "60d56aba-6483-43bc-8730-61cbb29ec534"
  tenant_id       = "0c14f0b2-ceab-47a0-9df5-e8c0d727df3e"
}
# Create a resource group
resource "azurerm_resource_group" "demo" {
  name     = "first-steps-demo"
  location = var.location
}
