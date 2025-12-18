terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.4.0"
}

provider "azurerm" {
  features {}
}
variable "tags" {
  type = map(string)
  default = {
    CreatedBy  = "Aaron Conaway"
    CreateDate = "2025-12-18"
    DeployedBy = "OpenTofu"
  }
}