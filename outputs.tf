output "custom_allocation_rules_id" {
  description = "Map of id values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no id are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "custom_allocation_rules_costs_to_allocate" {
  description = "Map of costs_to_allocate values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no costs_to_allocate are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.costs_to_allocate if v.costs_to_allocate != null && length(v.costs_to_allocate) > 0 }
}
output "custom_allocation_rules_created" {
  description = "Map of created values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no created are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.created if v.created != null && length(v.created) > 0 }
}
output "custom_allocation_rules_enabled" {
  description = "Map of enabled values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no enabled are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.enabled if v.enabled != null }
}
output "custom_allocation_rules_last_modified_user_uuid" {
  description = "Map of last_modified_user_uuid values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no last_modified_user_uuid are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.last_modified_user_uuid if v.last_modified_user_uuid != null && length(v.last_modified_user_uuid) > 0 }
}
output "custom_allocation_rules_order_id" {
  description = "Map of order_id values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no order_id are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.order_id if v.order_id != null }
}
output "custom_allocation_rules_providernames" {
  description = "Map of providernames values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no providernames are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.providernames if v.providernames != null && length(v.providernames) > 0 }
}
output "custom_allocation_rules_rejected" {
  description = "Map of rejected values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no rejected are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.rejected if v.rejected != null }
}
output "custom_allocation_rules_rule_name" {
  description = "Map of rule_name values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no rule_name are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.rule_name if v.rule_name != null && length(v.rule_name) > 0 }
}
output "custom_allocation_rules_strategy" {
  description = "Map of strategy values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no strategy are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.strategy if v.strategy != null && length(v.strategy) > 0 }
}
output "custom_allocation_rules_updated" {
  description = "Map of updated values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no updated are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.updated if v.updated != null && length(v.updated) > 0 }
}
output "custom_allocation_rules_version" {
  description = "Map of version values across all custom_allocation_rules, keyed the same as var.custom_allocation_rules except keys with no version are omitted"
  value       = { for k, v in datadog_custom_allocation_rule.custom_allocation_rules : k => v.version if v.version != null }
}

