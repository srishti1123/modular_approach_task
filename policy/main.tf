resource "newrelic_alert_policy" "policies" {
  name                = var.alert_policy_name
  incident_preference = var.incident_preference
}
