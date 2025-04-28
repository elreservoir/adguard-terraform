resource "adguard_config" "adguard_config" {
  stats = {
    enabled  = false
    interval = 2160
  }
}