resource "google_dataproc_metastore_service_iam_policy" "dataproc_metastore_service_iam_policies" {
  for_each = var.dataproc_metastore_service_iam_policies

  policy_data = each.value.policy_data
  service_id  = each.value.service_id
  location    = each.value.location
  project     = each.value.project
}

