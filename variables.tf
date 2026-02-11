variable "iotcentral_applications" {
  description = <<EOT
Map of iotcentral_applications, attributes below
Required:
    - location
    - name
    - resource_group_name
    - sub_domain
Optional:
    - display_name
    - public_network_access_enabled
    - sku
    - tags
    - template
    - identity (block):
        - type (required)
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    sub_domain                    = string
    display_name                  = optional(string)
    public_network_access_enabled = optional(bool)   # Default: true
    sku                           = optional(string) # Default: "ST1"
    tags                          = optional(map(string))
    template                      = optional(string) # Default: "iotc-pnp-preview@1.0.0"
    identity = optional(object({
      type = string
    }))
  }))
}

