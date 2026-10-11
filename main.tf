data "oci_managed_kafka_kafka_cluster_addons" "managed_kafka_kafka_cluster_addons_lookup" {
  for_each = var.managed_kafka_kafka_cluster_addons_lookup

  kafka_cluster_id = each.value.kafka_cluster_id
  name             = each.value.name
  state            = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

