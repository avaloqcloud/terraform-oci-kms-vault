resource "oci_kms_vault" "this" {
  # Required
  compartment_id = var.vault.compartment_id
  display_name   = var.vault.display_name
  vault_type     = var.vault.vault_type
  # Optional
  defined_tags  = var.vault.defined_tags
  freeform_tags = var.vault.freeform_tags
}