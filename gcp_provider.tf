# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Provider
# ---------------------------------------------------------------------------------------------------------------------
provider "google" {
  region = "us-west1"
  credentials = file("~/.config/gcloud/iq9-tf-bootstrap-d8cc9019555f.json")
}

provider "google-beta" {
  region = "us-west1"
  credentials = file("~/.config/gcloud/iq9-tf-bootstrap-d8cc9019555f.json")
}
