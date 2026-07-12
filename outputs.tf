output "iotcentral_applications_id" {
  description = "Map of id values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.id }
}
output "iotcentral_applications_display_name" {
  description = "Map of display_name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.display_name }
}
output "iotcentral_applications_identity" {
  description = "Map of identity values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.identity }
}
output "iotcentral_applications_location" {
  description = "Map of location values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.location }
}
output "iotcentral_applications_name" {
  description = "Map of name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.name }
}
output "iotcentral_applications_public_network_access_enabled" {
  description = "Map of public_network_access_enabled values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.public_network_access_enabled }
}
output "iotcentral_applications_resource_group_name" {
  description = "Map of resource_group_name values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.resource_group_name }
}
output "iotcentral_applications_sku" {
  description = "Map of sku values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.sku }
}
output "iotcentral_applications_sub_domain" {
  description = "Map of sub_domain values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.sub_domain }
}
output "iotcentral_applications_tags" {
  description = "Map of tags values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.tags }
}
output "iotcentral_applications_template" {
  description = "Map of template values across all iotcentral_applications, keyed the same as var.iotcentral_applications"
  value       = { for k, v in azurerm_iotcentral_application.iotcentral_applications : k => v.template }
}

