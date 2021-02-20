terraform {
  backend "s3" {
    skip_requesting_account_id  = true
    skip_credentials_validation = true
    skip_get_ec2_platforms      = true
    skip_metadata_api_check     = true
    endpoint                    = "https://fra1.digitaloceanspaces.com"
    region                      = "eu-west-1" # this isn't used
    key                         = "lsdrevamped.net.tfstate"
  }
}

provider "digitalocean" {
  spaces_access_id  = var.digitalocean_spaces_key
  spaces_secret_key = var.digitalocean_spaces_secret_key

  token = var.digitalocean_token
}

provider "azurerm" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id

  features {}
}

provider "azuread" {
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}
