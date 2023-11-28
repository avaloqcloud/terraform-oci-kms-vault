output "vault" {
  value = local.output_vault["resource"] # flatten using static map key
  description = "Vault output object"
}