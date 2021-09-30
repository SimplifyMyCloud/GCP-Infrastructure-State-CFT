# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Folders
# ensures GCP Folders per Infrastructure Environment for the Foundation Layer
# ---------------------------------------------------------------------------------------------------------------------

module "top_level_folders" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0"

  parent  = "organizations/447686549950"

  names = [
    "cft",
  ]

  set_roles = true

  per_folder_admins = {
    cft = "group:gcp-ops@iq9.io"
  }

  all_folder_admins = [
    "group:gcp-security@iq9.io",
  ]
}