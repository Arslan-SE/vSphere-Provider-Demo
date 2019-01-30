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