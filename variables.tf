variable "zero_trust_tunnel_cloudflareds" {
  description = <<EOT
Map of zero_trust_tunnel_cloudflareds, attributes below
Required:
    - account_id
    - name
Optional:
    - config_src
    - tunnel_secret
EOT

  type = map(object({
    account_id    = string
    name          = string
    config_src    = optional(string)
    tunnel_secret = optional(string)
  }))
}

