locals {
  # Needed to prepare the data for the resource in case the resource does not exist yet
  potential_resource = length(data.oci_kms_vault.existing_resource) < 1 ? var.vault != null ? {
    for flat_vault in flatten([
      for k, v in var.vault : {
        vault_id            = null
        k                   = k
        compartment_id      = v.compartment_id
        display_name        = v.display_name
        vault_type          = v.vault_type
        defined_tags        = v.defined_tags
        freeform_tags       = v.freeform_tags
        crypto_endpoint     = v.crypto_endpoint
        is_primary          = v.is_primary
        management_endpoint = v.management_endpoint
      }
    ]) : flat_vault.k => flat_vault
  } : {} : {}

  # Either return newly created resource or existing resource based on valut_id
  output_vault = merge(oci_kms_vault.this, data.oci_kms_vault.existing_resource)
}