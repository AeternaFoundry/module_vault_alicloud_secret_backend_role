resource "vault_alicloud_secret_backend_role" "alicloud_secret_backend_roles" {
  for_each = var.alicloud_secret_backend_roles

  mount     = each.value.mount
  name      = each.value.name
  max_ttl   = each.value.max_ttl
  namespace = each.value.namespace
  role_arn  = each.value.role_arn
  ttl       = each.value.ttl

  dynamic "inline_policies" {
    for_each = each.value.inline_policies != null ? each.value.inline_policies : []
    content {
      policy_document = inline_policies.value.policy_document
    }
  }

  dynamic "remote_policies" {
    for_each = each.value.remote_policies != null ? each.value.remote_policies : []
    content {
      name = remote_policies.value.name
      type = remote_policies.value.type
    }
  }
}

