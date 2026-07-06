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
    enabled                     = optional(bool) # Default: true
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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_alert_rule_ms_security_incident's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] err != nil
  # path: product_filter
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: severity_filter[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: display_name_filter[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: display_name_exclude_filter[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

