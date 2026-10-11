resource "datadog_custom_allocation_rule" "custom_allocation_rules" {
  for_each = var.custom_allocation_rules

  enabled       = each.value.enabled
  providernames = each.value.providernames
  rule_name     = each.value.rule_name

  dynamic "costs_to_allocate" {
    for_each = each.value.costs_to_allocate != null ? each.value.costs_to_allocate : []
    content {
      condition = costs_to_allocate.value.condition
      tag       = costs_to_allocate.value.tag
      value     = costs_to_allocate.value.value
      values    = costs_to_allocate.value.values
    }
  }

  dynamic "strategy" {
    for_each = each.value.strategy != null ? each.value.strategy : []
    content {
      dynamic "allocated_by" {
        for_each = strategy.value.allocated_by != null ? strategy.value.allocated_by : []
        content {
          dynamic "allocated_tags" {
            for_each = allocated_by.value.allocated_tags != null ? allocated_by.value.allocated_tags : []
            content {
              key   = allocated_tags.value.key
              value = allocated_tags.value.value
            }
          }
          percentage = allocated_by.value.percentage
        }
      }
      dynamic "allocated_by_filters" {
        for_each = strategy.value.allocated_by_filters != null ? strategy.value.allocated_by_filters : []
        content {
          condition = allocated_by_filters.value.condition
          tag       = allocated_by_filters.value.tag
          value     = allocated_by_filters.value.value
          values    = allocated_by_filters.value.values
        }
      }
      allocated_by_tag_keys = strategy.value.allocated_by_tag_keys
      dynamic "based_on_costs" {
        for_each = strategy.value.based_on_costs != null ? strategy.value.based_on_costs : []
        content {
          condition = based_on_costs.value.condition
          tag       = based_on_costs.value.tag
          value     = based_on_costs.value.value
          values    = based_on_costs.value.values
        }
      }
      dynamic "based_on_timeseries" {
        for_each = strategy.value.based_on_timeseries != null ? strategy.value.based_on_timeseries : []
        content {
          json = based_on_timeseries.value.json
        }
      }
      dynamic "evaluate_grouped_by_filters" {
        for_each = strategy.value.evaluate_grouped_by_filters != null ? strategy.value.evaluate_grouped_by_filters : []
        content {
          condition = evaluate_grouped_by_filters.value.condition
          tag       = evaluate_grouped_by_filters.value.tag
          value     = evaluate_grouped_by_filters.value.value
          values    = evaluate_grouped_by_filters.value.values
        }
      }
      evaluate_grouped_by_tag_keys = strategy.value.evaluate_grouped_by_tag_keys
      granularity                  = strategy.value.granularity
      method                       = strategy.value.method
    }
  }
}

