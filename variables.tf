variable "me_identity_users_lookup" {
  description = <<EOT
Map of me_identity_users_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

