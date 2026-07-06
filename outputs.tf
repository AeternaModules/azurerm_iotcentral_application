output "iotcentral_applications" {
  description = "All iotcentral_application resources"
  value       = azurerm_iotcentral_application.iotcentral_applications
}
output "iotcentral_applications_display_name" {
  description = "List of display_name values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.display_name]
}
output "iotcentral_applications_identity" {
  description = "List of identity values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.identity]
}
output "iotcentral_applications_location" {
  description = "List of location values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.location]
}
output "iotcentral_applications_name" {
  description = "List of name values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.name]
}
output "iotcentral_applications_public_network_access_enabled" {
  description = "List of public_network_access_enabled values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.public_network_access_enabled]
}
output "iotcentral_applications_resource_group_name" {
  description = "List of resource_group_name values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.resource_group_name]
}
output "iotcentral_applications_sku" {
  description = "List of sku values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.sku]
}
output "iotcentral_applications_sub_domain" {
  description = "List of sub_domain values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.sub_domain]
}
output "iotcentral_applications_tags" {
  description = "List of tags values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.tags]
}
output "iotcentral_applications_template" {
  description = "List of template values across all iotcentral_applications"
  value       = [for k, v in azurerm_iotcentral_application.iotcentral_applications : v.template]
}

