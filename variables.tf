variable "alicloud_secret_backend_roles" {
  description = <<EOT
Map of alicloud_secret_backend_roles, attributes below
Required:
    - mount
    - name
Optional:
    - max_ttl
    - namespace
    - role_arn
    - ttl
    - inline_policies (block):
        - policy_document (required)
    - remote_policies (block):
        - name (required)
        - type (required)
EOT

  type = map(object({
    mount     = string
    name      = string
    max_ttl   = optional(number)
    namespace = optional(string)
    role_arn  = optional(string)
    ttl       = optional(number)
    inline_policies = optional(list(object({
      policy_document = string
    })))
    remote_policies = optional(list(object({
      name = string
      type = string
    })))
  }))
}

