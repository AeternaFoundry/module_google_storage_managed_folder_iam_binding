output "storage_managed_folder_iam_bindings_id" {
  description = "Map of id values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no id are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "storage_managed_folder_iam_bindings_bucket" {
  description = "Map of bucket values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no bucket are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "storage_managed_folder_iam_bindings_condition" {
  description = "Map of condition values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no condition are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "storage_managed_folder_iam_bindings_etag" {
  description = "Map of etag values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no etag are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "storage_managed_folder_iam_bindings_managed_folder" {
  description = "Map of managed_folder values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no managed_folder are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.managed_folder if v.managed_folder != null && length(v.managed_folder) > 0 }
}
output "storage_managed_folder_iam_bindings_members" {
  description = "Map of members values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no members are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.members if v.members != null && length(v.members) > 0 }
}
output "storage_managed_folder_iam_bindings_role" {
  description = "Map of role values across all storage_managed_folder_iam_bindings, keyed the same as var.storage_managed_folder_iam_bindings except keys with no role are omitted"
  value       = { for k, v in google_storage_managed_folder_iam_binding.storage_managed_folder_iam_bindings : k => v.role if v.role != null && length(v.role) > 0 }
}

