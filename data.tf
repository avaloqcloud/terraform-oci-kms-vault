# Data lookups of existing resources
## Vault
data "oci_kms_vaults" "existing_vault" {
  # Required
  compartment_id = var.vault.compartment_id

  # Filter
  filter {
    name   = "display_name"
    values = ["${var.vault.display_name}"]
  }
  filter {
    # check if active
    name   = "state"
    values = ["ACTIVE"]
  }
}