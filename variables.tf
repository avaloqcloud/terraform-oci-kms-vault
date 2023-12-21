variable "vault" {
  description = "Vault input object"
  type = object({
    # Required
    compartment_id = string,
    display_name   = string,
    vault_type     = string,
    # Optional
    defined_tags  = optional(map(string)),
    freeform_tags = optional(map(string)),
  })
  # Validation
  ## vault_type
  validation {
    condition = contains(["DEFAULT", "VIRTUAL_PRIVATE"], var.vault.vault_type)
    error_message = "Validation of the Vault object failed. 'vault_type' must be one of 'DEFAULT' or 'VIRTUAL_PRIVATE'."
  }
}