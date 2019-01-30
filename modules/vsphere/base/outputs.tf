output "datacenterId" {
  value = "${data.vsphere_datacenter.dc.id}"
}

output "clusterId" {
  value = "${aws_subnet.research.id}"
}

output "vnetId" {
  value = "${aws_subnet.test.id}"
}

output "datastoreId" {
  value = "${aws_subnet.prod.id}"
}

output "vmtemplateId" {
  value = "${var.aws_region}"
}
