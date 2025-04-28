/*
 * Hashicorp Vault credentials
 */

variable "vault_token" {
  type = string
  sensitive = true
}

variable "vault_address" {
  type = string
  sensitive = true
}

/*
 * Load secrets from Hashicorp Vault
 */

data "vault_kv_secret_v2" "adguard_secrets" {
  mount = "kv"
  name = "adguard"
}