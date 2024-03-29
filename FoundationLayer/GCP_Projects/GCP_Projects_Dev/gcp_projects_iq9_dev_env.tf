# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Projects
# ensures GCP Projects per Infrastructure Environment
# for the Foundation Layer development environment, ensure a random prefix is included to avoid naming collisions
# and naming reservations.  GCP Projects are long lived naming reservations.
# the cloud foundation toolkit addresses the naming collisions
# ---------------------------------------------------------------------------------------------------------------------
# test environment
module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 6.0"

  name                = "iq9-dev-env"
  random_project_id   = false
  org_id              = "447686549950"
  folder_id           = "843289555551"
  billing_account     = "01AE65-A7583F-D9EB1A"
  lien                = true
  activate_apis = [
    "cloudbilling.googleapis.com",
    "compute.googleapis.com",
    "oslogin.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
  ]
  auto_create_network     = false
  default_service_account = "keep"
  group_name              = "gcp-test"
}

