variable "custom_allocation_rules" {
  description = <<EOT
Map of custom_allocation_rules, attributes below
Required:
    - enabled
    - providernames
    - rule_name
Optional:
    - costs_to_allocate (block):
        - condition (optional)
        - tag (optional)
        - value (optional)
        - values (optional)
    - strategy (block):
        - allocated_by (optional, block):
            - allocated_tags (optional, block):
                - key (optional)
                - value (optional)
            - percentage (optional)
        - allocated_by_filters (optional, block):
            - condition (optional)
            - tag (optional)
            - value (optional)
            - values (optional)
        - allocated_by_tag_keys (optional)
        - based_on_costs (optional, block):
            - condition (optional)
            - tag (optional)
            - value (optional)
            - values (optional)
        - based_on_timeseries (optional, block):
            - json (optional)
        - evaluate_grouped_by_filters (optional, block):
            - condition (optional)
            - tag (optional)
            - value (optional)
            - values (optional)
        - evaluate_grouped_by_tag_keys (optional)
        - granularity (optional)
        - method (optional)
EOT

  type = map(object({
    enabled       = bool
    providernames = list(string)
    rule_name     = string
    costs_to_allocate = optional(list(object({
      condition = optional(string)
      tag       = optional(string)
      value     = optional(string)
      values    = optional(list(string))
    })))
    strategy = optional(list(object({
      allocated_by = optional(list(object({
        allocated_tags = optional(list(object({
          key   = optional(string)
          value = optional(string)
        })))
        percentage = optional(number)
      })))
      allocated_by_filters = optional(list(object({
        condition = optional(string)
        tag       = optional(string)
        value     = optional(string)
        values    = optional(list(string))
      })))
      allocated_by_tag_keys = optional(list(string))
      based_on_costs = optional(list(object({
        condition = optional(string)
        tag       = optional(string)
        value     = optional(string)
        values    = optional(list(string))
      })))
      based_on_timeseries = optional(list(object({
        json = optional(string)
      })))
      evaluate_grouped_by_filters = optional(list(object({
        condition = optional(string)
        tag       = optional(string)
        value     = optional(string)
        values    = optional(list(string))
      })))
      evaluate_grouped_by_tag_keys = optional(list(string))
      granularity                  = optional(string)
      method                       = optional(string)
    })))
  }))
}

