########################################
######### Firewall Connectivity ########

variable "fw_ip" {
  description = "Firewall IP address"
}
variable "username" {
  description = "username to log into the firewall"
}
variable "password" {
  description = "password of user"
}

#######################################
# Device Groups, Templates, Template Stack

variable "device_group" {
  description = "Name of Device Group used to manage firewalls in this deployment"
}

variable "template" {
  description = "Tempalte Name"
}

variable "stack" {
  description = "Stack Name"
}



variable "serial1" {
  description = "firewall 1 serial number"
}

variable "serial2" {
  description = "firewall 2  serial number"
}

variable "interface" {
  description = "network interfaces"
}