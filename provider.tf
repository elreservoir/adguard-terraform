terraform {
  backend "http" {
    # The address will be provided by GitLab CI
  }

  required_providers {
    adguard = {
        source = "gmichels/adguard"
        version = "1.6.0"
    }
    vault = {
      source = "hashicorp/vault"
      version = "4.8.0"
    }
  }
}
  

provider "adguard" {
  host = "192.168.178.209"
  username = data.vault_kv_secret_v2.adguard_secrets.data["USERNAME"]
  password = data.vault_kv_secret_v2.adguard_secrets.data["PASSWORD"]
  scheme = "http"
  insecure = true
}

provider "vault" {
  address = var.vault_address
  token = var.vault_token
  skip_tls_verify = true
}