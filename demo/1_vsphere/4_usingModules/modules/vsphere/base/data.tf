data "vsphere_datacenter" "dc" {
  name = "${var.dc}"
}
data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_compute_cluster" "compute_cluster" {
  name          = "${var.cluster}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_host" "esx_host" {
  name          = "${var.host}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
data "vsphere_network" "network" {
  name          = "${var.vnet}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

// The name of the VM Template to use for deployment in a specific datacenter.
data "vsphere_virtual_machine" "template" {
  name          = "${var.vmtemplate}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
