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

// Resource Pool Name (If Available)
// variable "vmrp" {
//  description = "Cluster resource pool that VM will be deployed to. you use following to choose default pool in the cluster (esxi1) or (Cluster)/Resources"
// } 

// Datastore Cluster Name
//  variable "ds_cluster" {
//    description = "Datastore cluster to deploy the VM."
//  }