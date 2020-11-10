# Azure Provider
provider "azurerm" {
  
  subscription_id = "0157021e-46f8-4c63-9cd7-657099fff7e0"
  client_id       = "86d2d3ae-75b9-4d0a-978a-27de7e9d098b"
  client_secret   = "otSdy9e3~X-2-bUKAUAgwjzMvUwFASz_IM"
  tenant_id       = "e0980f8d-6fc9-44f6-a33a-88dc827c15e6"
  version = "=2.0.0"
  features {}
}


# State Backend
terraform {
  backend "azurerm" {
    resource_group_name   = "gitlabrg"
    storage_account_name  = "gitlabstorageaccount1"
    container_name        = "terraform-state"
    key                   = "test.terraform.tfstate"
  }
}
