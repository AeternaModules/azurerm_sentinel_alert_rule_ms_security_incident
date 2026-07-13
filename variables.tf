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
  # --- Unconfirmed validation candidates, derived from azurerm_sentinel_alert_rule_ms_security_incident's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] !ok
  # path: log_analytics_workspace_id
  #   source:    [from alertrules.ValidateWorkspaceID] err != nil
  # path: display_name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: product_filter
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: severity_filter[*]
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: alert_rule_template_guid
  #   condition: can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", value))
  #   message:   must be a valid UUID
  # path: description
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: display_name_filter[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: display_name_exclude_filter[*]
  #   condition: length(value) > 0
  #   message:   must not be empty
}

