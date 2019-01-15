  // Name of the Datacenter.
    variable "dc" {
      description = "Name of the datacenter you want to deploy the VM to"
    }
  // Cluster
    variable "cluster" {
  }
// Datastore
    variable "datastore" {
  }
    // Name of VM Template
    variable "vmtemplate" {
      description = "Name of the template available in the vSphere"
    }

variable "vnet" {
    description = "(Required)VLAN name where the VM should be deployed"
  }  
