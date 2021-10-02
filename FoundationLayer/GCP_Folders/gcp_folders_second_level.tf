# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Folders
# ensures GCP Folders per Infrastructure Environment for the Foundation Layer
# ---------------------------------------------------------------------------------------------------------------------

module "second_level_folders_environments" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0.0"

  parent  = "folders/448206662585"

  names = [
    "iq9_sandbox_cft",
    "iq9_dev_cft",
    "iq9_prod_cft",
  ]

  set_roles = true

  per_folder_admins = {
    sandbox = "group:gcp-developers@iq9.io",
    dev = "group:gcp-developers@iq9.io",
    prod = "group:gcp-ops@iq9.io",
  }

  all_folder_admins = [
    "group:gcp-security@iq9.io",
  ]
}