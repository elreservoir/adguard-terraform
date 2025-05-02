resource "adguard_rewrite" "elreservoir_home" {
  domain = "*.elreservoir.home"
  answer = "192.168.178.19"
}

resource "adguard_rewrite" "elreservoir_lan" {
  domain = "*.elreservoir.lan"
  answer = "192.168.178.135"
}

resource "adguard_rewrite" "elreservoir_internal" {
  domain = "*.elreservoir.internal"
  answer = "192.168.178.135"
}