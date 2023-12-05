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
}