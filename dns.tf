resource "adguard_rewrite" "elreservoir_home" {
  domain = "*.elreservoir.home"
  answer = "192.168.178.19"
}