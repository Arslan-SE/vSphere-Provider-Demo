data "vsphere_datacenter" "dc" {
  name = "${var.dc}"
}

// Datastore
data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}
