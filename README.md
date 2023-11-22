[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/josip-stanic/terraform-oci-kms-vault/archive/refs/heads/main.zip)
# Terraform OCI KMS Vault
The code provides a reusable Terraform module that provisions a Vault on Oracle Cloud Infrastructure.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.9 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_kms_vault.this](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/kms_vault) | resource |
| [oci_kms_vault.existing_resource](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/data-sources/kms_vault) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_fingerprint"></a> [fingerprint](#input\_fingerprint) | n/a | `any` | n/a | yes |
| <a name="input_private_key_path"></a> [private\_key\_path](#input\_private\_key\_path) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_tenancy_ocid"></a> [tenancy\_ocid](#input\_tenancy\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_user_ocid"></a> [user\_ocid](#input\_user\_ocid) | n/a | `any` | n/a | yes |
| <a name="input_vault"></a> [vault](#input\_vault) | Vault input object | <pre>map(object({<br>    vault_id            = optional(string),<br>    compartment_id      = optional(string),<br>    display_name        = optional(string),<br>    vault_type          = optional(string),<br>    defined_tags        = optional(map(string)),<br>    freeform_tags       = optional(map(string)),<br>    crypto_endpoint     = optional(string),<br>    is_primary          = optional(bool),<br>    management_endpoint = optional(string),<br>  }))</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault"></a> [vault](#output\_vault) | Vault output object |
<!-- END_TF_DOCS -->