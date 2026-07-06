output "sentinel_alert_rule_ms_security_incidents" {
  description = "All sentinel_alert_rule_ms_security_incident resources"
  value       = azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents
}
output "sentinel_alert_rule_ms_security_incidents_alert_rule_template_guid" {
  description = "List of alert_rule_template_guid values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.alert_rule_template_guid]
}
output "sentinel_alert_rule_ms_security_incidents_description" {
  description = "List of description values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.description]
}
output "sentinel_alert_rule_ms_security_incidents_display_name" {
  description = "List of display_name values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.display_name]
}
output "sentinel_alert_rule_ms_security_incidents_display_name_exclude_filter" {
  description = "List of display_name_exclude_filter values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.display_name_exclude_filter]
}
output "sentinel_alert_rule_ms_security_incidents_display_name_filter" {
  description = "List of display_name_filter values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.display_name_filter]
}
output "sentinel_alert_rule_ms_security_incidents_enabled" {
  description = "List of enabled values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.enabled]
}
output "sentinel_alert_rule_ms_security_incidents_log_analytics_workspace_id" {
  description = "List of log_analytics_workspace_id values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.log_analytics_workspace_id]
}
output "sentinel_alert_rule_ms_security_incidents_name" {
  description = "List of name values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.name]
}
output "sentinel_alert_rule_ms_security_incidents_product_filter" {
  description = "List of product_filter values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.product_filter]
}
output "sentinel_alert_rule_ms_security_incidents_severity_filter" {
  description = "List of severity_filter values across all sentinel_alert_rule_ms_security_incidents"
  value       = [for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : v.severity_filter]
}

