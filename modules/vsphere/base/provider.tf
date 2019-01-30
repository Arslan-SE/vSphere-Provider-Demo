# Get more information on the vSphere Provider:
# https://www.terraform.io/docs/providers/vsphere/index.html#argument-reference   

provider "vsphere" {
  /*
  Requires ENVIRONMENT VARIABLES:  
  export VSPHERE_USER="<Username>@vsphere.local"  
  export VSPHERE_PASSWORD="<Password>"  
  export VSPHERE_SERVER="<IP Address>"  
  export VSPHERE_ALLOW_UNVERIFIED_SSL=true
  */
}