data "oci_kms_vault" "existing_resource" {
  for_each = {
    for k, v in var.vault : k => v
    if v.vault_id != null
  }
  vault_id = each.value.vault_id
}