// Prefix gets added to every resource
variable "prefix" {}

// Name of the Datacenter.
variable "dc" {
  description = "Name of the datacenter you want to deploy the VM to"
}

// Cluster
variable "cluster" {}

// Datastore
variable "datastore" {}

// Name of VM Template
variable "vmtemplate" {
  description = "Name of the template available in the vSphere"
}

// Folder Name
variable "vmfolder" {}

// Attribute Name 
variable "attribute" {
  description = "The attribute Name"
}

// Attribute Name 
variable "attributeValue" {
  description = "The attribute value"
}

// VM Name
variable "tagCategory" {
  description = "The Tag Category Name"
}

// VM Name prefix 
variable "tag" {
  description = "The Tag Name"
}
