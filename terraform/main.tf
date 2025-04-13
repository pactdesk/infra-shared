module "container_registry" {
  source = "git::https://github.com/mbrickerd/terraform-azure-modules.git//modules/container-registry?ref=40bfe523a79652f6b1d84e0577fb2a75d2907c61"

  name                = var.name
  resource_group_name = var.resource_group_name
  environment         = var.environment
  location            = var.location
  sku                 = "Standard"

  admin_enabled                 = true
  public_network_access_enabled = true
  data_endpoint_enabled         = false
  zone_redundancy_enabled       = false
  quarantine_policy_enabled     = false
  network_rule_set              = null
  georeplications               = []

  tags = {
    managed_by_terraform = true
  }
}
