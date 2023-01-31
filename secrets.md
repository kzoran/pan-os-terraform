## Prerequisite #1: Do Not Store Secrets in plain text

## Prerequisite #2: the second rule of secret management is: 
## DO NOT STORE SECRETS IN PLAIN TEXT!!!

Its bad practice to hard-code any of your credentials in your Terraform code, even if I have it in my code sample. Depending on the project and deployoment enviroment i am using:
- Terraform Cloud, Terraform Enterprise and HashiCorp Vault
- Encrypted Files (KMS, AWS KMS, GCP KMS, Azure Key Vault)
- Secret Stores (AWS Secret Manager, HashiCorp Vault, GCP Secret Manager)
- Pass utility
- Enviroment Variables - secret.tfvars that is specified in .gitignore 
	- Set Values with .tfvars
	- Set Values with variables

#### Secrets with .tfvars
official link: https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables

secrets.tfvars
```
user = "admin"
password = "mypasswordisincorrect"
```

```
terraform apply -var-file="secret.tfvars"
```

#### Enviroment Variables
```
export TF_VAR_user=admin TF_VAR_password=mypasswordisincorrect
```