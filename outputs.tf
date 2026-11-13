output "policy_rule_passwords_id" {
  description = "Map of id values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.id }
}
output "policy_rule_passwords_groups_excluded" {
  description = "Map of groups_excluded values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.groups_excluded }
}
output "policy_rule_passwords_groups_included" {
  description = "Map of groups_included values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.groups_included }
}
output "policy_rule_passwords_name" {
  description = "Map of name values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.name }
}
output "policy_rule_passwords_network_connection" {
  description = "Map of network_connection values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_connection }
}
output "policy_rule_passwords_network_excludes" {
  description = "Map of network_excludes values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_excludes }
}
output "policy_rule_passwords_network_includes" {
  description = "Map of network_includes values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.network_includes }
}
output "policy_rule_passwords_password_change" {
  description = "Map of password_change values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_change }
}
output "policy_rule_passwords_password_reset" {
  description = "Map of password_reset values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_reset }
}
output "policy_rule_passwords_password_reset_access_control" {
  description = "Map of password_reset_access_control values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_reset_access_control }
}
output "policy_rule_passwords_password_reset_requirement" {
  description = "Map of password_reset_requirement values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => one(v.password_reset_requirement) }
}
output "policy_rule_passwords_password_unlock" {
  description = "Map of password_unlock values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.password_unlock }
}
output "policy_rule_passwords_policy_id" {
  description = "Map of policy_id values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.policy_id }
}
output "policy_rule_passwords_priority" {
  description = "Map of priority values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.priority }
}
output "policy_rule_passwords_status" {
  description = "Map of status values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.status }
}
output "policy_rule_passwords_users_excluded" {
  description = "Map of users_excluded values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.users_excluded }
}
output "policy_rule_passwords_users_included" {
  description = "Map of users_included values across all policy_rule_passwords, keyed the same as var.policy_rule_passwords"
  value       = { for k, v in okta_policy_rule_password.policy_rule_passwords : k => v.users_included }
}

