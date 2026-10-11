output "me_identity_users_lookup_id" {
  description = "Map of id values across all me_identity_users_lookup, keyed the same as var.me_identity_users_lookup except keys with no id are omitted"
  value       = { for k, v in data.ovh_me_identity_users.me_identity_users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "me_identity_users_lookup_users" {
  description = "Map of users values across all me_identity_users_lookup, keyed the same as var.me_identity_users_lookup except keys with no users are omitted"
  value       = { for k, v in data.ovh_me_identity_users.me_identity_users_lookup : k => v.users if v.users != null && length(v.users) > 0 }
}

