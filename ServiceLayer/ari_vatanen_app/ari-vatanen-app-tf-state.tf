# ---------------------------------------------------------------------------------------------------------------------
# Service Layer - GCP Dev Project
# GCS Backend for Terraform State
# ---------------------------------------------------------------------------------------------------------------------
terraform {
  backend "gcs" {
    bucket  = "iq9-cft-state"
    prefix  = "terraform/state/service/ari_vatanen_app/dev"
  }
}