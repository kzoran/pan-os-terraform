## Overview
This Terraform playbook will deploy and bootstrap a standalone Palo Alto Networks VM-Series firewall on vSphere

This deployment will:
- Create a bootstrap file from tfvars file
- Create an ISO
- Upload the bootstrapping ISO to the datastore specified in tfvars file
- Create a VM Folder where VM-Series firewall will be deployed
- Attach bootstrap ISO to the VM-Series
- Power on the VM-Series
- Once Firewall is booted, it will be configured with basic management configuration and connected to Panorama, if Panorama server(s) are added to the tfvars file and auth-code provided

### NOTE 
Its a bad practice to store Secrets or VM Auth Codes in plain text. For additional info please refer to: [Secrets.md](https://github.com/kzoran/pan-os-terraform/blob/main/secrets.md)

### Prerequsites

You need to download VM-Series ova from CSP Portal (support.paloaltonetworks.com).

Create a VM-Series template in your vCenter enviroment and name it pa-vm-template. 

Optional: obtain VM AuthCode from CSP Portal and if you will use Panorama, generate  VM Auth Code on Panorama


### Instructions


Modify terraform.tfvars to match your vSphere enviroment



### Workfllow

Initialize terraform provider
```
terraform init
```

Preview proposed actions between current code and the remote state
```
terraform plan
```

Deploy VM-Series firewall propsed in terrafrom plan
```
terrafrom apply
```
