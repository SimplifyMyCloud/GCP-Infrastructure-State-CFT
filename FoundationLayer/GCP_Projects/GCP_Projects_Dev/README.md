# GCP Project - Dev Environment IaC

GCP Project named `iq9-dev` hosted in the GCP Folder named `iq9-dev`.

This is the test development environment for iq9.

Terraform will be run in this directory, creating a Terraform state containing:

* GCP Project `iq9-dev`


Directory contents:

* `gcp_projects_iq9_dev_env.tf` - contains the desired state for the iq9 dev environment
* `gcp_providers.tf` - soft Linux link back to the root Terraform providers file
* `gcp_projects_iq9_dev_env_gcs_backend.tf` - Terraform state file located in `terraform/state/foundation/dev_env`

Terraform State File stored in a GCS Bucket:

`gs://iq9-terraform-shared-state-bucket/terraform/state/foundation/gcp_projects/dev_env`