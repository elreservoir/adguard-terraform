terraform {
  backend "http" {
    # The address will be provided by GitLab CI
  }

  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.1-rc8"
    }
    cloudinit = {
      source  = "hashicorp/cloudinit"
      version = "2.3.6"
    }
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

provider "proxmox" {
  pm_api_url = data.vault_kv_secret_v2.proxmox_secrets.data["API_URL"]
  pm_api_token_id = data.vault_kv_secret_v2.proxmox_secrets.data["API_TOKEN_ID"]
  pm_api_token_secret = data.vault_kv_secret_v2.proxmox_secrets.data["API_TOKEN"]
  pm_tls_insecure = true
}

provider "adguard" {
  host = data.vault_kv_secret_v2.adguard_secrets.data["HOST"]
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