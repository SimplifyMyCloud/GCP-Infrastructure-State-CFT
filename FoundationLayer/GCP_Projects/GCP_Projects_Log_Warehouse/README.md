# GCP Project - Log Warehouse Environment IaC

GCP Project named `iq9-log-warehouse-00` hosted in a GCP Org top level folder.

This is the log warehouse environment for the iq9 GCP Org.

Terraform will be run in this directory, creating a Terraform state containing:

* GCP Project `iq9-log-warehouse-00`
* GCP network `none`
* GCP subnetworks `none`

Directory contents:

* `gcp_projects_log_warehouse.tf` - contains the desired state for the GCP Project
* `gcp_providers.tf` - soft Linux link back to the root Terraform providers file
* `gcp_projects_log_warehouse_gcs_backend.tf` - Terraform state file located in `terraform/state/foundation/gcp_projects/log_warehouse_env`

Terraform State File stored in a GCS Bucket:

`gs://iq9-terraform-shared-state-bucket/terraform/state/foundation/gcp_projects/log_warehouse_env`