resource "tfe_variable" "hostname" {
  key      = "hostname"
  value    = "${var.hostname}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "use_case_name" {
  key      = "use_case_name"
  value    = "${var.use_case_name}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "VSPHERE_USER" {
  key          = "VSPHERE_USER"
  value        = "${var.VSPHERE_USER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "VSPHERE_PASSWORD" {
  key          = "VSPHERE_PASSWORD"
  value        = "${var.VSPHERE_PASSWORD}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "VSPHERE_SERVER" {
  key          = "VSPHERE_SERVER"
  value        = "${var.VSPHERE_SERVER}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "VSPHERE_ALLOW_UNVERIFIED_SSL" {
  key          = "VSPHERE_ALLOW_UNVERIFIED_SSL"
  value        = "${var.VSPHERE_ALLOW_UNVERIFIED_SSL}"
  category     = "env"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}





/*
resource "tfe_variable" "sub_account_aws_access_key" {
  key          = "sub_account_aws_access_key"
  value        = "${var.sub_account_aws_access_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}
resource "tfe_variable" "sub_account_aws_secret_key" {
  key          = "sub_account_aws_secret_key"
  value        = "${var.sub_account_aws_secret_key}"
  category     = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "hostname" {
  key      = "hostname"
  value    = "${var.hostname}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "r" {
  key      = "tfe_org_token"
  value    = "${var.tfe_org_token}"
  category = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "tfe_oauth_token" {
  key      = "tfe_oauth_token"
  value    = "${var.tfe_oauth_token}"
  category = "terraform"
  sensitive    = "true"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "vcs_identifier" {
  key      = "vcs_identifier"
  value    = "${var.vcs_identifier}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "org" {
  key          = "org"
  value        = "${var.org}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "use_case_name" {
  key          = "use_case_name"
  value        = "${var.use_case_name}"
  category     = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}

resource "tfe_variable" "aws_region" {
  key      = "aws_region"
  value    = "${var.aws_region}"
  category = "terraform"
  workspace_id = "${tfe_workspace.creator.id}"
}
*/
resource "tfe_variable" "confirm_destroy" {
  key          = "CONFIRM_DESTROY"
  value        = "1"
  category     = "env"
  workspace_id = "${tfe_workspace.creator.id}"
}

