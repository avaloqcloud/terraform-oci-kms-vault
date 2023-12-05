locals {
  # Potential resources
  ## Vault
  potential_vault = length(data.oci_kms_vaults.existing_vault.vaults) < 1 ? {
    "resource" = {
      # Required
      compartment_id = var.vault.compartment_id
      display_name   = var.vault.display_name
      vault_type     = var.vault.vault_type
      # Optional
      defined_tags  = var.vault.defined_tags
      freeform_tags = var.vault.freeform_tags
    }
  } : {}

  # Outputs
  ## Vault
  prep_existing_vault_output = length(data.oci_kms_vaults.existing_vault.vaults) > 0 ? {
    "resource" = {
      compartment_id                        = data.oci_kms_vaults.existing_vault.vaults[0].compartment_id
      crypto_endpoint                       = data.oci_kms_vaults.existing_vault.vaults[0].crypto_endpoint
      defined_tags                          = data.oci_kms_vaults.existing_vault.vaults[0].defined_tags
      display_name                          = data.oci_kms_vaults.existing_vault.vaults[0].display_name
      external_key_manager_metadata         = data.oci_kms_vaults.existing_vault.vaults[0].external_key_manager_metadata
      external_key_manager_metadata_summary = data.oci_kms_vaults.existing_vault.vaults[0].external_key_manager_metadata_summary
      freeform_tags                         = data.oci_kms_vaults.existing_vault.vaults[0].freeform_tags
      id                                    = data.oci_kms_vaults.existing_vault.vaults[0].id
      is_primary                            = data.oci_kms_vaults.existing_vault.vaults[0].is_primary
      management_endpoint                   = data.oci_kms_vaults.existing_vault.vaults[0].management_endpoint
      replica_details                       = data.oci_kms_vaults.existing_vault.vaults[0].replica_details
      restore_from_file                     = data.oci_kms_vaults.existing_vault.vaults[0].restore_from_file
      restore_from_object_store             = data.oci_kms_vaults.existing_vault.vaults[0].restore_from_object_store
      restore_trigger                       = data.oci_kms_vaults.existing_vault.vaults[0].restore_trigger
      restored_from_vault_id                = data.oci_kms_vaults.existing_vault.vaults[0].restored_from_vault_id
      state                                 = data.oci_kms_vaults.existing_vault.vaults[0].state
      time_created                          = data.oci_kms_vaults.existing_vault.vaults[0].time_created
      time_of_deletion                      = data.oci_kms_vaults.existing_vault.vaults[0].time_of_deletion
      vault_type                            = data.oci_kms_vaults.existing_vault.vaults[0].vault_type
    }
  } : {}
  output_vault = merge(oci_kms_vault.this, local.prep_existing_vault_output)
}