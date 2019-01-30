module "base" {
  source = "../base"
  // Template
  dc = "PacketDatacenter"
  cluster = "MainCluster"
  datastore = "datastore1"
  host = "10.100.0.2"
  vnet = "Production"
  vmtemplate = "UbuntuTemplate"
}

/*
resource "vsphere_host_virtual_switch" "switch" {
  name           = "test"
  host_system_id = "${data.vsphere_host.esxi_host.id}"

  network_adapters = ["vmnic0"]

  active_nics  = ["vmnic0"]
}

*/

