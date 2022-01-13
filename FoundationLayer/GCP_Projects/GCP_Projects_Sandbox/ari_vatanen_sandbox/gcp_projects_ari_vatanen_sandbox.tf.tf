# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Projects
# ensures GCP Projects per Infrastructure Environment
# for the Foundation Layer development environment, ensure a random prefix is included to avoid naming collisions
# and naming reservations.  GCP Projects are long lived naming reservations.
# the cloud foundation toolkit addresses the naming collisions
# ---------------------------------------------------------------------------------------------------------------------
# development environment
module "ari-vatanen-app-dev-project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 11.2.1"

  name                = "ari-vatanen-sandbox"
  random_project_id   = false
  org_id              = "447686549950"
  folder_id           = "155706752597"
  billing_account     = "018B8F-68E09C-7618B0"
  lien                = true

  activate_apis = [
    "cloudbilling.googleapis.com",
    "compute.googleapis.com",
    "oslogin.googleapis.com",
    "container.googleapis.com",
    "iam.googleapis.com",
    "serviceusage.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "run.googleapis.com",
    "cloudbuild.googleapis.com",
    "appengine.googleapis.com",
    "storage-component.googleapis.com",
    "logging.googleapis.com",
    "clouderrorreporting.googleapis.com",
    "monitoring.googleapis.com",
    "run.googleapis.com",
    "vpcaccess.googleapis.com",
    "sqladmin.googleapis.com",
  ]

  auto_create_network     = true
  default_service_account = "keep"
  group_name              = "gcp-developers@iq9.io"
}

