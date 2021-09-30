# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCS Backend for Terraform State
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  backend "gcs" {
    bucket  = "iq9-terraform-shared-state-bucket"
    prefix  = "/gcp_cft/terraform/state/foundation/gcp_folders"
  }
}