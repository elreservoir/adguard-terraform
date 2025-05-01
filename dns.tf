resource "adguard_rewrite" "elreservoir_home" {
  domain = "*.elreservoir.home"
  answer = "192.168.178.19"
}

resource "adguard_rewrite" "proxmox_lan" {
  domain = "pm.elreservoir.lan"
  answer = "192.168.178.135"
}