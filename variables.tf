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
  # --- Unconfirmed validation candidates, derived from azurerm_iotcentral_application's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.ApplicationName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: sub_domain
  #   source:    [from validate.ApplicationSubdomain] !matched
  # path: display_name
  #   source:    [from validate.ApplicationDisplayName] !matched
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: sku
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: template
  #   source:    [from validate.ApplicationTemplateName] !matched
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

