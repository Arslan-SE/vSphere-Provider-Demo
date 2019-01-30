data "vsphere_datacenter" "dc" {
  name = "${var.dc}"
}
// Datastore
data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

// The cluster's id (When you are not deploying to a resource pool or it doesn't exist)
data "vsphere_compute_cluster" "compute_cluster" {
  name          = "${var.cluster}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

// The vSPhere network being used.
data "vsphere_network" "network" {
  name          = "${var.vnet}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

// The name of the VM Template to use for deployment in a specific datacenter.
data "vsphere_virtual_machine" "template" {
  name          = "${var.vmtemplate}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
