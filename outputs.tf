output "policy_rule_passwords_id" {
  description = "Map of id values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no id are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.id if v.id != null && length(v.id) > 0 }
}
output "policy_rule_passwords_groups_excluded" {
  description = "Map of groups_excluded values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no groups_excluded are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.groups_excluded if v.groups_excluded != null && length(v.groups_excluded) > 0 }
}
output "policy_rule_passwords_groups_included" {
  description = "Map of groups_included values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no groups_included are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.groups_included if v.groups_included != null && length(v.groups_included) > 0 }
}
output "policy_rule_passwords_name" {
  description = "Map of name values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no name are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.name if v.name != null && length(v.name) > 0 }
}
output "policy_rule_passwords_network_connection" {
  description = "Map of network_connection values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no network_connection are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_connection if v.network_connection != null && length(v.network_connection) > 0 }
}
output "policy_rule_passwords_network_excludes" {
  description = "Map of network_excludes values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no network_excludes are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_excludes if v.network_excludes != null && length(v.network_excludes) > 0 }
}
output "policy_rule_passwords_network_includes" {
  description = "Map of network_includes values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no network_includes are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_includes if v.network_includes != null && length(v.network_includes) > 0 }
}
output "policy_rule_passwords_password_change" {
  description = "Map of password_change values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no password_change are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_change if v.password_change != null && length(v.password_change) > 0 }
}
output "policy_rule_passwords_password_reset" {
  description = "Map of password_reset values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no password_reset are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_reset if v.password_reset != null && length(v.password_reset) > 0 }
}
output "policy_rule_passwords_password_reset_access_control" {
  description = "Map of password_reset_access_control values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no password_reset_access_control are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_reset_access_control if v.password_reset_access_control != null && length(v.password_reset_access_control) > 0 }
}
output "policy_rule_passwords_password_reset_requirement" {
  description = "Map of password_reset_requirement values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no password_reset_requirement are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => one(v.password_reset_requirement) if v.password_reset_requirement != null && length(v.password_reset_requirement) > 0 }
}
output "policy_rule_passwords_password_unlock" {
  description = "Map of password_unlock values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no password_unlock are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_unlock if v.password_unlock != null && length(v.password_unlock) > 0 }
}
output "policy_rule_passwords_policy_id" {
  description = "Map of policy_id values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no policy_id are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "policy_rule_passwords_priority" {
  description = "Map of priority values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no priority are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.priority if v.priority != null }
}
output "policy_rule_passwords_status" {
  description = "Map of status values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no status are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.status if v.status != null && length(v.status) > 0 }
}
output "policy_rule_passwords_users_excluded" {
  description = "Map of users_excluded values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no users_excluded are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.users_excluded if v.users_excluded != null && length(v.users_excluded) > 0 }
}
output "policy_rule_passwords_users_included" {
  description = "Map of users_included values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords except keys with no users_included are omitted"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.users_included if v.users_included != null && length(v.users_included) > 0 }
}

