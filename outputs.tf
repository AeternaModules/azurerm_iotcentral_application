output "iotcentral_applications_id" {
  description = "Map of id values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iotcentral_applications_display_name" {
  description = "Map of display_name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "iotcentral_applications_identity" {
  description = "Map of identity values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.identity if v.identity != null && length(v.identity) > 0 }
}
output "iotcentral_applications_location" {
  description = "Map of location values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.location if v.location != null && length(v.location) > 0 }
}
output "iotcentral_applications_name" {
  description = "Map of name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.name if v.name != null && length(v.name) > 0 }
}
output "iotcentral_applications_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.public_network_access_enabled if v.public_network_access_enabled != null }
}
output "iotcentral_applications_resource_group_name" {
  description = "Map of resource_group_name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "iotcentral_applications_sku" {
  description = "Map of sku values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.sku if v.sku != null && length(v.sku) > 0 }
}
output "iotcentral_applications_sub_domain" {
  description = "Map of sub_domain values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.sub_domain if v.sub_domain != null && length(v.sub_domain) > 0 }
}
output "iotcentral_applications_tags" {
  description = "Map of tags values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "iotcentral_applications_template" {
  description = "Map of template values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.template if v.template != null && length(v.template) > 0 }
}

