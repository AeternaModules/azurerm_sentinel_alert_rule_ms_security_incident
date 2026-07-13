variable "sentinel_alert_rule_ms_security_incidents" {
  description = <<EOT
Map of sentinel_alert_rule_ms_security_incidents, attributes below
Required:
    - display_name
    - log_analytics_workspace_id
    - name
    - product_filter
    - severity_filter
Optional:
    - alert_rule_template_guid
    - description
    - display_name_exclude_filter
    - display_name_filter
    - enabled
EOT

  type = map(object({
    display_name                = string
    log_analytics_workspace_id  = string
    name                        = string
    product_filter              = string
    severity_filter             = set(string)
    alert_rule_template_guid    = optional(string)
    description                 = optional(string)
    display_name_exclude_filter = optional(set(string))
    display_name_filter         = optional(set(string))
    enabled                     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        length(v.display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        v.alert_rule_template_guid == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.alert_rule_template_guid)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        v.description == null || (length(v.description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        v.display_name_filter == null || (alltrue([for x in v.display_name_filter : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.sentinel_alert_rule_ms_security_incidents : (
        v.display_name_exclude_filter == null || (alltrue([for x in v.display_name_exclude_filter : length(x) > 0]))
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

