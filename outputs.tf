output "alicloud_secret_backend_roles_inline_policies" {
  description = "Map of inline_policies values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no inline_policies are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.inline_policies if v.inline_policies != null && length(v.inline_policies) > 0 }
}
output "alicloud_secret_backend_roles_max_ttl" {
  description = "Map of max_ttl values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no max_ttl are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.max_ttl if v.max_ttl != null }
}
output "alicloud_secret_backend_roles_mount" {
  description = "Map of mount values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no mount are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.mount if v.mount != null && length(v.mount) > 0 }
}
output "alicloud_secret_backend_roles_name" {
  description = "Map of name values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no name are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alicloud_secret_backend_roles_namespace" {
  description = "Map of namespace values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no namespace are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "alicloud_secret_backend_roles_remote_policies" {
  description = "Map of remote_policies values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no remote_policies are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.remote_policies if v.remote_policies != null && length(v.remote_policies) > 0 }
}
output "alicloud_secret_backend_roles_role_arn" {
  description = "Map of role_arn values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no role_arn are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}
output "alicloud_secret_backend_roles_ttl" {
  description = "Map of ttl values across all alicloud_secret_backend_roles, keyed the same as var.alicloud_secret_backend_roles except keys with no ttl are omitted"
  value       = { for k, v in vault_alicloud_secret_backend_role.alicloud_secret_backend_roles : k => v.ttl if v.ttl != null }
}

