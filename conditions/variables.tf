variable "policy_id" {
  type        = string
}

variable "alert_conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
  }))
}
