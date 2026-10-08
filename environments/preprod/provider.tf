terraform {
  required_version = ">= 1.3.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 5.8"
    }
  }
  backend "azurerm" {
    resource_group_name  = "SATTAR-RESOURCE-GROUP"
    storage_account_name = "sattarstorage0"
    container_name       = "sattarcontainer"
    key                  = "preprod.tfstate"
  }
}

provider "azurerm" {
  features {}
}
