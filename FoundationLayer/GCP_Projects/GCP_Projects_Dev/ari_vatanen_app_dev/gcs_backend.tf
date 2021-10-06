# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer - GCP Dev Project
# GCS Backend for Terraform State
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  backend "gcs" {
    bucket  = "iq9-cft-state"
    prefix  = "terraform/state/foundation/gcp_projects/dev_env/ari_vatanen_app_dev"
  }
}