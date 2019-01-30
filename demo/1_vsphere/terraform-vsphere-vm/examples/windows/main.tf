// Example of basic Windows VM
module "example-server-windowsvm-withdatadisk" {
  source            = "Terraform-VMWare-Modules/vm/vsphere"
  version           = "0.9.2"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"  
  vlan              = "Name of the VLAN in vSphere"
  is_windows_image  = "true"
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
  winadminpass      = "Str0ngP@ssw0rd!" //Optional
}
// Example of Windows VM with additional
module "example-server-windowsvm-withdatadisk" {
  source            = "Terraform-VMWare-Modules/vm/vsphere"
  version           = "0.9.2"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"  
  vlan              = "Name of the VLAN in vSphere"
  data_disk         = "true"
  data_disk_size_gb = 20
  is_windows_image  = "true"
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
  winadminpass      = "Str0ngP@ssw0rd!"
}
//Example of Windows VM joined to Domain!
module "example-server-windowsvm-withdatadisk-domain" {
  source            = "Arman-Keyoumarsi/vm/vsphere"
  version           = "0.9.2"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"  
  vlan              = "Name of the VLAN in vSphere"
  is_windows_image  = "true"
  join_windomain    = "true"
  domainpass        = "Domain Password"
  domainuser        = "Domain User"
  run_once          = ["echo Hello World"]
  productkey        = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
  ipaddress         = ["10.0.0.13"]
  vmdns             = ["1.1.1.1", "8.8.8.8"]
  vmgateway         = "10.0.0.1"
  winadminpass      = "Str0ngP@ssw0rd!"
}
//Example of Windows VM joined to Domain and with additional data disk!
module "example-server-windowsvm-withdatadisk-domain" {
  source            = "Arman-Keyoumarsi/vm/vsphere"
  version           = "0.9.2"
  vmtemp            = "TemplateName"
  instances         = 1
  vmname            = "example-server-windows"
  vmrp              = "esxi/Resources"  
  vlan              = "Name of the VLAN in vSphere"
  is_windows_image  = "true"
  data_disk         = "true"
  data_disk_size_gb = 40
  join_windomain    = "true"
  domainpass        = "Domain Password"
  domainuser        = "Domain User"
  run_once          = ["echo Hello World"]
  productkey        = "WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
  dc                = "Datacenter"
  ds_cluster        = "Data Store Cluster name"
  ipaddress         = ["10.0.0.13"]
  vmdns             = ["1.1.1.1", "8.8.8.8"]
  vmgateway         = "10.0.0.1"
  winadminpass      = "Str0ngP@ssw0rd!"
}