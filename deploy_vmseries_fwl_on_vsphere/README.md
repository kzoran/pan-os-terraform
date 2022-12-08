### Overview
this playbook will deploy a single Palo Alto Networks VM-Series firewall on vSphere
#### Instructions
modify terraform.tfvars to match your enviroment

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