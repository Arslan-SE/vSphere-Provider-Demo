# Configure the Terraform Enterprise Provider
provider "tfe" {
  hostname = "${var.hostname}"
  token    = "${var.tfe_user_token}"
}
resource "tfe_workspace" "creator" {
  name              = "${var.use_case_name}-creator"
  organization      = "${var.org}"
  working_directory = ""

  vcs_repo = {
    identifier     = "${var.creator_vcs_identifier}"
    oauth_token_id = "${var.tfe_oauth_token}"
  }
}