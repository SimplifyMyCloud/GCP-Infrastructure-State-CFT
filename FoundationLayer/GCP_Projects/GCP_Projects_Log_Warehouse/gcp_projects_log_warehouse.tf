# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Projects
# ensures GCP Projects per Infrastructure Environment
# ---------------------------------------------------------------------------------------------------------------------
# log warehouse environment
module "project-factory" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 13.0"

  name                = "iq9-log-warehouse-cft-00"
  random_project_id   = false
  org_id              = "447686549950"
  folder_id           = "{NEEDS_VALUE}"
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
  ]
  auto_create_network     = false
  default_service_account = "keep"
  group_name              = "gcp-ops"
}

