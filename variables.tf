variable "storage_managed_folder_iam_bindings" {
  description = <<EOT
Map of storage_managed_folder_iam_bindings, attributes below
Required:
    - bucket
    - managed_folder
    - members
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    bucket         = string
    managed_folder = string
    members        = set(string)
    role           = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

