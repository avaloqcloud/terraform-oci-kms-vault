data "oci_kms_vault" "existing_resource" {
  for_each = {
    for k, v in local.helper_resource_map : k => v
    if v.vault_id != null
  }
  vault_id = each.value.vault_id
}