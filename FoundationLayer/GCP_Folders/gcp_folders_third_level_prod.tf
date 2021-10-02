# ---------------------------------------------------------------------------------------------------------------------
# Foundation Layer
# GCP Folders
# ensures GCP Folders per Infrastructure Environment for the Foundation Layer
# ---------------------------------------------------------------------------------------------------------------------

module "third_level_folders_prod" {
  source  = "terraform-google-modules/folders/google"
  version = "~> 3.0.0"

  parent  = "folders/36984627163"

  names = [
    "iq9_ari_vatanen_prod_cft",
    "iq9_colin_mcrae_prod_cft",
  ]

  set_roles = true

  all_folder_admins = [
    "group:gcp-security@iq9.io",
  ]
}