# GCP Project - Ari Vatanen Sandbox Environment IaC

GCP Project named `ari-vatanen-sandbox` hosted in the GCP Folder named `iq9-sandbox`.

This is the sandbox environment for Ari Vatanen - `ari@iq9.io`.

Terraform will be run in this directory, creating a Terraform state containing:

* GCP Project `ari-vatanen-sandbox`


Directory contents:

* `gcp_projects_ari_vatanen_sandbox.tf` - contains the desired state for the iq9 dev environment
* `gcp_providers.tf` - soft Linux link back to the root Terraform providers file
* `gcp_projects_ari_vatanen_sandbox_gcs_backend.tf` - Terraform state file located in `terraform/state/foundation/sandbox_env/ari_vatanen`

Terraform State File stored in a GCS Bucket:

`gs://iq9-terraform-shared-state-bucket/terraform/state/foundation/gcp_projects/sandbox_env/ari_vatanen`