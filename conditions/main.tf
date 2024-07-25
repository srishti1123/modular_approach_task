resource "newrelic_nrql_alert_condition" "conditions" {
  for_each = var.alert_conditions

  policy_id                    = var.policy_id
  type                         = "static"
  name                         = each.value.name
  enabled                      = true
  violation_time_limit_seconds = 259200

  nrql {
    query = each.value.query
  }

  critical {
    operator              = "above"
    threshold             = each.value.threshold
    threshold_duration    = each.value.threshold_duration
    threshold_occurrences = "all"
  }

  fill_option         = "none"
  aggregation_window  = 60
  aggregation_method  = "event_flow"
  aggregation_delay   = 120
}
