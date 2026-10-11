variable "managed_kafka_kafka_cluster_addons_lookup" {
  description = <<EOT
Map of managed_kafka_kafka_cluster_addons_lookup, attributes below
Required:
    - kafka_cluster_id
Optional:
    - name
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    kafka_cluster_id = string
    name             = optional(string)
    state            = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.managed_kafka_kafka_cluster_addons_lookup : (
        alltrue([for item in v.addon_collection : (item.items == null || alltrue([for item in item.items : (item.addon_type == null || (contains([for v in ["PUBLICCONNECTIVITY"] : lower(v)], lower(item.addon_type))))]))])
      )
    ])
    error_message = "must be one of: \"PUBLICCONNECTIVITY\""
  }
}

