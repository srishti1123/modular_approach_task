variable "policy_1_conditions" {
  type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
  }))
}

variable "policy_2_conditions" {
    type = map(object({
    name                = string
    query               = string
    threshold           = number
    threshold_duration  = number
  }))
}
