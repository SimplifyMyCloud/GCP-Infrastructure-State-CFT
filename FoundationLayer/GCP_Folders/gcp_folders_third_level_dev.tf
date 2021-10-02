# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Folders
# ensures GCP Folders per Infrastructure Environment for the Foundation Layer
# ---------------------------------------------------------------------------------------------------------------------

module "third_level_folders_dev" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0.0"

  parent  = "folders/20259814746"

  names = [
    "iq9_ari_dev_cft",
    "iq9_colin_dev_cft",
  ]

  set_roles = true

  all_folder_admins = [
    "group:gcp-developers@iq9.io",
    "group:gcp-security@iq9.io",
  ]
}