provider "vsphere" {
  #version = "~> 1.9.1"
  # Requires ENVIRONMENT VARIABLES:   //export VSPHERE_USER="<Username>@vsphere.local"  //export VSPHERE_PASSWORD="<Password>"  //export VSPHERE_SERVER="<IP Address>"  //export VSPHERE_ALLOW_UNVERIFIED_SSL=true
}

terraform {
  required_version = ">= 0.11.10"
}