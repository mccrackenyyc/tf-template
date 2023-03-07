terraform {
  backend "azurerm" {
    subscription_id      = var.subscription_id
    resource_group_name  = "name-statefile"
    storage_account_name = "mccrackenyycNAMEstatefile"
    container_name       = "terraform"
    key                  = "name.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.40.0"
      #hardcode to latest version available then remove this comment
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id

  features {}
}