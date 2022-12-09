### Overview
This Terraform playbook will deploy and bootstrap a standalone Palo Alto Networks VM-Series firewall on vSphere

This deployment will:
- create a bootstrap file from tfvars file
- create an ISO
- upload the bootstrapping ISO to the datastore specified in tfvars file
- create a VM Folder where VM-Series firewall will be deployed
- attach bootstrap ISO to the VM-Series
- Power on the VM-Series
- Once Firewall is booted, it will be configured with basic management configuration and connected to Panorama, if Panorama server(s) are added to the tfvars file and auth-code provided

#### Instructions


Modify terraform.tfvars to match your enviroment

#### Workfllow

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