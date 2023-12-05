resource "oci_kms_vault" "this" {
  for_each = local.potential_vault
  # Required
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  vault_type     = each.value.vault_type
  # Optional
  defined_tags  = each.value.defined_tags
  freeform_tags = each.value.freeform_tags
}