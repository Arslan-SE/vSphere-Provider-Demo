# getVsphereData

This demo is very simple.

1. Pull some information from the vCenter such as Datacenter, Cluster, Datastore, Virtual Network, VM Template, etc.

2. Take a look at the state file once you complete the steps below and examine the resource data. 

- We can output specific attributes from the state file using the ```output.tf``` file and selecting specific attribute for example: ```data.vsphere_datacenter.dc.id``` 

- For example, some resources may require the ```datacenterId``` attribute. We can now reference the id of the datacenter. 
- Terraform has a resource graph and knows which resources to provision and in which order.   

## Pre-Requisites and Tips
1. Set the vSphere Environment Variables:

```
export VSPHERE_USER="<Username>@vsphere.local"
export VSPHERE_PASSWORD="<Password>"
export VSPHERE_SERVER="<IP Address>"
export VSPHERE_ALLOW_UNVERIFIED_SSL=true
```

## Steps

0. Navigate to the example:

```
cd 1_getVsphereData/
```

1. Save the terraform.tfvars.example file as terraform.tfvars and update the values. 

```
cp terraform.tfvars.example terraform.tfvars
vi terraform.tfvars
```

2. Initialize Terraform to pull the providers. 

```
terraform init
```

3. Make a dry run to see what will actually happen. 

```
terraform plan
```

4. Apply the changes and provision resources.

```
terraform apply
```

5. Clean up.

```
terraform destroy
```


## Authors

Edited by Arslan Saeed

## License

[MIT](LICENSE)