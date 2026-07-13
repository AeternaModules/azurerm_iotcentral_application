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
    public_network_access_enabled = optional(bool)
    sku                           = optional(string)
    tags                          = optional(map(string))
    template                      = optional(string)
    identity = optional(object({
      type = string
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.iotcentral_applications : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iotcentral_applications : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iotcentral_applications : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iotcentral_applications : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 11 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

