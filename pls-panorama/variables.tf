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
#######################################################
###############Ethernet Interfaces ####################

variable "eth1_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth1_mode" {
  description = "Interface mode"
}

variable "eth1_vsys" {
  description = "eth1 vsys assignment"
}

variable "eth1_comment" {
  description = "ethernet1/1 comment"
}
#variable "eth1_dhcp" {
#  description = "Enable interface for DHCP client"
#}

#variable "eth1_default_route" {
#  description = "Accept default route"
#}

variable "eth2_name" {
  description = "Name of our Ethernet 1/2 interface"
}

variable "eth2_mode" {
  description = "Mode of our Ethernet 1/2 interface"
}

variable "eth2_vsys" {
  description = "eth2 vsys assignment"
}

variable "eth2_ip" {
  description = "Static IP assignment"
}
variable "eth2_comment" {
  description = "ethernet1/1 comment"
}

variable "eth3_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth3_mode" {
  description = "Interface mode"
}

variable "eth3_vsys" {
  description = "eth3 vsys assignment"
}

#variable "eth3_dhcp" {
#  description = "Enable interface for DHCP client"
#}

variable "eth4_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth4_mode" {
  description = "Interface mode"
}

variable "eth4_vsys" {
  description = "eth4 vsys assignment"
}
variable "eth4_ip" {
  description = "Static IP assignment"

#variable "eth4_dhcp" {
#  description = "Enable interface for DHCP client"
#}

variable "eth5_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth5_mode" {
  description = "Interface mode"
}

variable "eth5_vsys" {
  description = "eth5 vsys assignment"
}
variable "eth5_ip" {
  description = "Static IP assignment"
}

variable "eth8_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth8_mode" {
  description = "Interface mode"
}

variable "eth8_vsys" {
  description = "eth8 vsys assignment"
}

variable "eth8_comment" {
  description = "ethernet1/1 comment"
}

variable "eth9_name" {
  description = "Name of our Ethernet 1/1 interface"
}

variable "eth9_mode" {
  description = "Interface mode"
}

variable "eth9_vsys" {
  description = "eth9 vsys assignment"
}

variable "eth9_comment" {
  description = "ethernet1/1 comment"
}

##################################################
############# Virtual Router #####################

variable "vr_name" {
  description = "Virtual Router Name"
}


#v

#variable "interface" {
#  description = "network interfaces"
#}