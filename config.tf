resource "adguard_config" "adguard_config" {
  stats = {
    enabled  = true
    interval = 2160
  }

  dns = {
    upstream_dns = ["https://dns.quad9.net/dns-query", "https://dns.google/dns-query", "https://dns.cloudflare.com/dns-query"]
    rate_limit = 0
    dnssec_enabled = true
    use_private_ptr_resolvers = true
    local_ptr_upstreams = [ "192.168.178.1" ]
  }
}