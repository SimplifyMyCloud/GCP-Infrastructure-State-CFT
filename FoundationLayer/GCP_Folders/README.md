# GCP Folders IaC

GCP Folders contain environments, dev, test, stage, and production. GCP Folders are long lived, permanent GCP assets.  Because of this fact, the Terraform for the GCP Folders should be hard coded with no variables.  

Terraform will be run in this directory, creating a Terraform state containing just the GCP Folders desired state.

Directory contents:

* `gcp_folders_top_level.tf` - contains all top level GCP Folders desired state
* `gcp_folders_second_level.tf` - contains all second level GCP Folders desired state
* `gcp_folders_third_level_dev.tf` - contains all third level dev GCP Folders desired state
* `gcp_folders_third_level_prod.tf` - contains all third level production GCP Folders desired state
* `gcp_providers.tf` - soft Linux link back to the root Terraform providers file
* `gcp_folders_gcs_backend.tf` - Terraform state file located in `terraform/state/foundation/gcp_folders`

Terraform State File stored in a GCS Bucket:

`gs://iq9-tf-states/terraform/state/foundation/gcp_folders`
