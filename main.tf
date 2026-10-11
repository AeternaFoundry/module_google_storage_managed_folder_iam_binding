resource "google_storage_managed_folder_iam_binding" "storage_managed_folder_iam_bindings" {
  for_each = var.storage_managed_folder_iam_bindings

  bucket         = each.value.bucket
  managed_folder = each.value.managed_folder
  members        = each.value.members
  role           = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

