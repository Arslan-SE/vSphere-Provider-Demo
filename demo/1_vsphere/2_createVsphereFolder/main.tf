// Create Folder
resource "vsphere_folder" "folder" {
  path              = "${var.prefix}${var.vmfolder}"
  type              = "vm"
  datacenter_id     = "${data.vsphere_datacenter.dc.id}"
  tags              = ["${vsphere_tag.tag.id}"]
  custom_attributes = "${map(vsphere_custom_attribute.attribute.id, "${var.attributeValue}")}"
}

// Apply attribute to the folder
// https://www.terraform.io/docs/providers/vsphere/r/custom_attribute.html
resource "vsphere_custom_attribute" "attribute" {
  name                = "${var.prefix}${var.attribute}"
  managed_object_type = "Folder"
}

// vSphere Tag Category (SINGLE or MULTIPLE)
resource "vsphere_tag_category" "category" {
  name        = "${var.tagCategory}"
  description = "Managed by Terraform"
  cardinality = "MULTIPLE"

  // The types of objects this tag can be associated with.
  associable_types = [
    "VirtualMachine",
    "Folder",
  ]
}

// vSphere Tag
resource "vsphere_tag" "tag" {
  name        = "${var.tag}"
  category_id = "${vsphere_tag_category.category.id}"
  description = "Managed by Terraform"
}
