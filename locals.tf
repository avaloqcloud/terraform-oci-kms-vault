locals {
  # Needed in order to iterate in the data lookup
  helper_resource_map = {
    "resource" = { # static key only used internally so that we can flatten input and output
      vault_id = var.vault.vault_id != null ? var.vault.vault_id : null # can either be set in input or not
      compartment_id = var.vault.compartment_id
      display_name = var.vault.display_name
      vault_type = var.vault.vault_type
      defined_tags = var.vault.defined_tags
      freeform_tags = var.vault.freeform_tags
      crypto_endpoint = var.vault.crypto_endpoint
      is_primary = var.vault.is_primary
      management_endpoint = var.vault.management_endpoint
    }
  }

  # Needed to prepare the data for the resource in case the resource does not exist yet
  potential_resource = length(data.oci_kms_vault.existing_resource) < 1 ? local.helper_resource_map != null ? {
    for flat_vault in flatten([
      for k, v in local.helper_resource_map : {
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

  # Either return newly created resource or existing resource based on ocid
  output_vault = merge(oci_kms_vault.this, data.oci_kms_vault.existing_resource)
}