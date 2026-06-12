terraform {
  required_providers {
    powerplatform = {
      source  = "microsoft/power-platform"
      version = "~> 3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttfstate"
    container_name       = "tfstate"
    key                  = "powerplatform.tfstate"
  }
}

provider "powerplatform" {
  tenant_id     = var.tenant_id
  client_id     = var.client_id
  client_secret = var.client_secret
}

resource "powerplatform_environment" "dev" {
  display_name     = var.environment_name
  location         = var.location
  environment_type = var.environment_type

  dataverse = {
    language_code     = "1033"
    currency_code     = "USD"
    security_group_id = var.security_group_id
  }
}
