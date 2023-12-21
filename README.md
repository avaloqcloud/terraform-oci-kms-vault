[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/terraform-oci-kms-vault/archive/refs/heads/main.zip)
# Terraform OCI KMS Vault
The code provides a reusable and standalone Terraform module that provisions a Vault on Oracle Cloud Infrastructure.


## Example Input
`vault.auto.tfvars.json`:
```json
{
  "vault": {
    "compartment_id": "ocid1.vault.oc1.eu-frankfurt-1.x",
    "display_name": "my-vault",
    "vault_type": "DEFAULT"
  }
}
```

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

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vault"></a> [vault](#input\_vault) | Vault input object | <pre>object({<br>    # Required<br>    compartment_id = string,<br>    display_name   = string,<br>    vault_type     = string,<br>    # Optional<br>    defined_tags  = optional(map(string)),<br>    freeform_tags = optional(map(string)),<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault"></a> [vault](#output\_vault) | Vault output object |
<!-- END_TF_DOCS -->
