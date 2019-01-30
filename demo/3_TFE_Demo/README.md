# Terraform-Multi-Cloud-Hybrid-Demo

This demo shows how you can provision any app to any cloud.

For Virtual Machine Provisioning using the vSphere Provider.

There are 3 different examples, one in each folder.  

# Repository Structure
```
Terraform-Multi-Cloud-Hybrid-Demo
├── aws
├── azure
├── gcp
├── vsphere
└── modules
    ├── aws
    │   ├── network
    │   │   └── network.tf
    │   └── compute
    │        └── compute.tf
    ├── azure
    │   ├── network
    │   │   └── network.tf
    │   └── compute
    │        └── compute.tf              
    ├── vsphere
    │   ├── network
    │   │   └── network.tf
    │   ├── tags
    │   │   └── tags.tf
    │   └── compute
    │        └── compute.tf
    └── gcp
        └── kubernetes
           └── kubernetes.tf
```
## Pre-Requisites and Tips
1. Set the vSphere Environment Variables:

```
export VSPHERE_USER="<Username>@vsphere.local"
export VSPHERE_PASSWORD="<Password>"
export VSPHERE_SERVER="<IP Address>"
export VSPHERE_ALLOW_UNVERIFIED_SSL=true
```

2. All examples tested using Terraform v11.11. If using a different version, you may experience issues.

3. All examples tested using the vSphere Provider v1.9.1_x4. If using a different version, you may experience issues.

4. Clone this repo to your local directory. 

```
git clone git@github.com:Arslan-SE/CBS.git
```

5. Destroy the changes and provision resources (if any).

```
terraform destroy
```

## 1_getVsphereData
- This example is very simple. It pulls some data from the vCenter environment. 

0. Navigate to the example:

```
cd 3_getVsphereData/
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

4. Apply the changes and provision resources (if any).

```
terraform apply
```

## 2_createSomeResources
- This example will provision a folder and then apply tags and attributes to that folder. 

0. Navigate to the example:

```
cd 3_create_SomeResources/
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

4. Apply the changes and provision resources (if any).

```
terraform apply
```

5. Destroy the changes and provision resources (if any).

```
terraform destroy
```
## 3_create_VmResource
- This example brings the other two examples together along with provisioning a VM using a cloned template. 

0. Navigate to the example:

```
cd 3_create_VmResource/
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

4. Apply the changes and provision resources (if any).

```
terraform apply
```

5. Destroy the changes and provision resources (if any).

```
terraform destroy
```
## Authors

Edited by Arslan Saeed

## License

[MIT](LICENSE)

```