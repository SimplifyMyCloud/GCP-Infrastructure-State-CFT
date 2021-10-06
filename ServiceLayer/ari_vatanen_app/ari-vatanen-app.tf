module "cloud_run" {
  source  = "GoogleCloudPlatform/cloud-run/google"
  version = "~> 0.1.1"

  # Required variables
  service_name           = "ari-vatanen-app"
  project_id             = "ari-vatanen-app-dev"
  location               = "us-west1"
  image                  = "gcr.io/cloudrun/hello"
}