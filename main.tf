module "policy_1" {
  source = "./policy"

  alert_policy_name   = "core-web-vitals"
  incident_preference = "PER_CONDITION"
}

module "policy_2" {
  source = "./policy"

  alert_policy_name   = "infrastructure-policy"
  incident_preference = "PER_CONDITION"
}

module "policy_1_conditions" {
  source = "./conditions"

  policy_id = module.policy_1.alert_policy_id
  alert_conditions = var.policy_1_conditions
}

module "policy_2_conditions" {
  source = "./conditions"

  policy_id = module.policy_2.alert_policy_id
  alert_conditions = var.policy_2_conditions
}
