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
  validation {
    condition = var.vault.vault_type == null ? true : contains(["DEFAULT", "PRIVATE"], var.vault.vault_type)
    error_message = "Validation of the Vault object failed. 'vault_type' must be one of 'DEFAULT' or 'PRIVATE'"
  }
}