# Configure the Azure provider
terraform {

  required_version = ">= 1.7.5"

  backend "local" {
    path = "./states/terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.97.1"
    }
  }
}

provider "azurerm" {
  # Subscription
  subscription_id = var.subscription_id
  # The Azure Provider will automatically register all of the Resource Providers which it supports on launch
  skip_provider_registration = true

  features {
    resource_group {
      # Prevent Terraform from deleting a resource group where a new resource is deployed
      prevent_deletion_if_contains_resources = true
    }
  }
}