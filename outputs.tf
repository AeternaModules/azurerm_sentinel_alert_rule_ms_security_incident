output "sentinel_alert_rule_ms_security_incidents_alert_rule_template_guid" {
  description = "Map of alert_rule_template_guid values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.alert_rule_template_guid }
}
output "sentinel_alert_rule_ms_security_incidents_description" {
  description = "Map of description values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.description }
}
output "sentinel_alert_rule_ms_security_incidents_display_name" {
  description = "Map of display_name values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.display_name }
}
output "sentinel_alert_rule_ms_security_incidents_display_name_exclude_filter" {
  description = "Map of display_name_exclude_filter values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.display_name_exclude_filter }
}
output "sentinel_alert_rule_ms_security_incidents_display_name_filter" {
  description = "Map of display_name_filter values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.display_name_filter }
}
output "sentinel_alert_rule_ms_security_incidents_enabled" {
  description = "Map of enabled values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.enabled }
}
output "sentinel_alert_rule_ms_security_incidents_log_analytics_workspace_id" {
  description = "Map of log_analytics_workspace_id values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.log_analytics_workspace_id }
}
output "sentinel_alert_rule_ms_security_incidents_name" {
  description = "Map of name values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.name }
}
output "sentinel_alert_rule_ms_security_incidents_product_filter" {
  description = "Map of product_filter values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.product_filter }
}
output "sentinel_alert_rule_ms_security_incidents_severity_filter" {
  description = "Map of severity_filter values across all sentinel_alert_rule_ms_security_incidents, keyed the same as var.sentinel_alert_rule_ms_security_incidents"
  value       = { for k, v in azurerm_sentinel_alert_rule_ms_security_incident.sentinel_alert_rule_ms_security_incidents : k => v.severity_filter }
}

