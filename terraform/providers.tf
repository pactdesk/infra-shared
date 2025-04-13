provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id                 = "c95f7219-0fbc-4550-bcbb-14d38b9af10b"
  resource_provider_registrations = "none"
}
