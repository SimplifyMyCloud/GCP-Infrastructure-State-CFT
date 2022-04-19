module "log_export" {
  source                 = "terraform-google-modules/log-export/google"
  destination_uri        = "${module.destination.destination_uri}"
  filter                 = "severity >= ERROR"
  log_sink_name          = "storage_example_logsink"
  parent_resource_id     = "447686549950"
  parent_resource_type   = "organization"
  unique_writer_identity = false
}

module "destination" {
  source                   = "terraform-google-modules/log-export/google//modules/storage"
  project_id               = "iq9-log-warehouse-cft-00"
  storage_bucket_name      = "iq9-log-warehouse-cft"
}