variable "vault" {
  description = "Vault input object"
  type = object({
    vault_id            = optional(string),
    compartment_id      = optional(string),
    display_name        = optional(string),
    vault_type          = optional(string),
    defined_tags        = optional(map(string)),
    freeform_tags       = optional(map(string)),
    crypto_endpoint     = optional(string),
    is_primary          = optional(bool),
    management_endpoint = optional(string),
  })
  # If vault_id/ocid ommited, check whether required resource params are set
  ## compartment_id
  validation {
    condition = var.vault.vault_id == null ? (var.vault.compartment_id != null ? true : false) : true
    error_message = "Validation of the Vault object failed. 'compartment_id' must be provided if 'vault_id' is ommited."
  }
  ## display_name
  validation {
    condition = var.vault.vault_id == null ? (var.vault.display_name != null ? true : false) : true
    error_message = "Validation of the Vault object failed. 'display_name' must be provided if 'vault_id' is ommited."
  }
  ## vault_type
  validation {
    condition = var.vault.vault_id == null ? (contains(["DEFAULT", "PRIVATE"], var.vault.vault_type)) : true
    error_message = "Validation of the Vault object failed. 'vault_type' must be provided and be one of 'DEFAULT' or 'PRIVATE' if 'vault_id' is ommited."
  }
}