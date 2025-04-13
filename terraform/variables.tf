variable "resource_group_name" {
  description = "The name of the resource group in which to create the Azure resources."
  type        = string
  default     = "rg-shared-stg"
}

variable "name" {
  description = "The base name of the Azure resources."
  type        = string
  default     = "shared"
}

variable "environment" {
  description = "Specifies the environment the Azure resources belong to."
  type        = string
  default     = "stg"

  validation {
    condition     = contains(["dev", "tst", "acc", "stg", "prd", "mgmt"], var.environment)
    error_message = "Invalid value for environment. Must be one of: `dev`, `tst`, `acc`, `stg`, `prd`, `mgmt`."
  }
}

variable "location" {
  description = "The location where the Azure resources will be created."
  type        = string
  default     = "westeurope"
}
