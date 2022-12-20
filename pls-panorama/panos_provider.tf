# https://registry.terraform.io/providers/PaloAltoNetworks/panos/latest/docs
terraform {
  required_providers {
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "1.11.0"
    }
  }
}

provider "panos" {
  hostname = var.fw_ip
  username = var.username
  password = var.password
}