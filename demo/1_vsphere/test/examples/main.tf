module "test" {
  source = "../modules/pullData"

  vmtemplate = "UbuntuTemplate"
  dc         = "PacketDatacenter"
  cluster    = "MainCluster"
  datastore  = "datastore1"
  vnet       = "VM Network"
}

