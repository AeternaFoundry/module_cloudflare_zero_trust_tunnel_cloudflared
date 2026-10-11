resource "cloudflare_zero_trust_tunnel_cloudflared" "zero_trust_tunnel_cloudflareds" {
  for_each = var.zero_trust_tunnel_cloudflareds

  account_id    = each.value.account_id
  name          = each.value.name
  config_src    = each.value.config_src
  tunnel_secret = each.value.tunnel_secret
}

