output "managed_kafka_kafka_cluster_addons_lookup_id" {
  description = "Map of id values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "managed_kafka_kafka_cluster_addons_lookup_addon_collection" {
  description = "Map of addon_collection values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no addon_collection are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.addon_collection if v.addon_collection != null && length(v.addon_collection) > 0 }
}
output "managed_kafka_kafka_cluster_addons_lookup_filter" {
  description = "Map of filter values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "managed_kafka_kafka_cluster_addons_lookup_kafka_cluster_id" {
  description = "Map of kafka_cluster_id values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no kafka_cluster_id are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.kafka_cluster_id if v.kafka_cluster_id != null && length(v.kafka_cluster_id) > 0 }
}
output "managed_kafka_kafka_cluster_addons_lookup_name" {
  description = "Map of name values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no name are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "managed_kafka_kafka_cluster_addons_lookup_state" {
  description = "Map of state values across all managed_kafka_kafka_cluster_addons_lookup, keyed the same as var.managed_kafka_kafka_cluster_addons_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_managed_kafka_kafka_cluster_addons.managed_kafka_kafka_cluster_addons_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}

