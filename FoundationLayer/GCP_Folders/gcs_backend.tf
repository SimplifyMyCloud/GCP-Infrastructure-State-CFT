# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCS Backend for CFT Terraform State
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  backend "gcs" {
    bucket  = "iq9-cft-state"
    prefix  = "terraform/state/foundation/gcp_folders"
  }
}