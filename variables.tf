variable "policy_rule_passwords" {
  description = <<EOT
Map of policy_rule_passwords, attributes below
Required:
    - name
Optional:
    - groups_excluded
    - groups_included
    - network_connection
    - network_excludes
    - network_includes
    - password_change
    - password_reset
    - password_reset_access_control
    - password_unlock
    - policy_id
    - priority
    - status
    - users_excluded
    - users_included
    - password_reset_requirement (block):
        - method_constraints (optional, block):
            - allowed_authenticators (optional)
            - method (required)
        - primary_methods (optional)
        - step_up_enabled (optional)
        - step_up_methods (optional)
EOT

  type = map(object({
    name                          = string
    groups_excluded               = optional(set(string))
    groups_included               = optional(set(string))
    network_connection            = optional(string)
    network_excludes              = optional(list(string))
    network_includes              = optional(list(string))
    password_change               = optional(string)
    password_reset                = optional(string)
    password_reset_access_control = optional(string)
    password_unlock               = optional(string)
    policy_id                     = optional(string)
    priority                      = optional(number)
    status                        = optional(string)
    users_excluded                = optional(set(string))
    users_included                = optional(set(string))
    password_reset_requirement = optional(object({
      method_constraints = optional(list(object({
        allowed_authenticators = optional(set(string))
        method                 = string
      })))
      primary_methods = optional(set(string))
      step_up_enabled = optional(bool)
      step_up_methods = optional(set(string))
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.policy_rule_passwords : (
        v.password_reset_access_control == null || (contains(["LEGACY", "AUTH_POLICY"], v.password_reset_access_control))
      )
    ])
    error_message = "must be one of: \"LEGACY\", \"AUTH_POLICY\""
  }
}

