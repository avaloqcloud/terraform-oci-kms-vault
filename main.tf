resource "oci_kms_vault" "this" {
  for_each       = local.potential_resource
  compartment_id = each.value.compartment_id
  display_name   = "${each.value.display_name}-vault"
  vault_type     = each.value.vault_type
}