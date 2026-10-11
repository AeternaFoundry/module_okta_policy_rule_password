resource "okta_policy_rule_password" "policy_rule_passwords" {
  for_each = var.policy_rule_passwords

  name                          = each.value.name
  groups_excluded               = each.value.groups_excluded
  groups_included               = each.value.groups_included
  network_connection            = each.value.network_connection
  network_excludes              = each.value.network_excludes
  network_includes              = each.value.network_includes
  password_change               = each.value.password_change
  password_reset                = each.value.password_reset
  password_reset_access_control = each.value.password_reset_access_control
  password_unlock               = each.value.password_unlock
  policy_id                     = each.value.policy_id
  priority                      = each.value.priority
  status                        = each.value.status
  users_excluded                = each.value.users_excluded
  users_included                = each.value.users_included

  dynamic "password_reset_requirement" {
    for_each = each.value.password_reset_requirement != null ? [each.value.password_reset_requirement] : []
    content {
      dynamic "method_constraints" {
        for_each = password_reset_requirement.value.method_constraints != null ? password_reset_requirement.value.method_constraints : []
        content {
          allowed_authenticators = method_constraints.value.allowed_authenticators
          method                 = method_constraints.value.method
        }
      }
      primary_methods = password_reset_requirement.value.primary_methods
      step_up_enabled = password_reset_requirement.value.step_up_enabled
      step_up_methods = password_reset_requirement.value.step_up_methods
    }
  }
}

