// Create Folder
resource "vsphere_folder" "folder" {
  path          = "${var.prefix}${var.vmfolder}"
  type          = "vm"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
  tags          = ["${vsphere_tag.tag.id}"]

  //custom_attributes = "${map(vsphere_custom_attribute.attribute.id, "${var.attributeValue}")}"
}
