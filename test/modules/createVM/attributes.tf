// https://www.terraform.io/docs/providers/vsphere/r/custom_attribute.html
resource "vsphere_custom_attribute" "attribute" {
  name                = "${var.prefix}${var.attribute}"
  managed_object_type = "Folder"
}