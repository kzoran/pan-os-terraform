#####################################
# Panorama or Firewall Connectivity #

fw_ip    = "192.168.2.10"
username = "autobot"
password = "Flexpod123!"

#########################################
# Device Group, template and stack info #

device_group = "PA-VM-0-DG"
template     = "PA-VM-0-template"
#template     = "PA-VM-0-template2"
stack        = "PA-VM-0-stack"

#########################################
######### PA-VM Series info #############

serial2 = "007951000346611"
serial1 = "007951000346600"


################################################
######### Firewall Network Interfaces  #########
######## Comment out unused interfaces  ########

# WAN Interface
eth1_name = "ethernet1/1"
eth1_mode = "layer3"
eth1_vsys = "vsys1"
eth1_comment = "WAN Interface"
eth1_dhcp          = true
eth1_default_route = true
eth1_dhcp_send_hostname_enable = true


# Eth2 Interface
eth2_name = "ethernet1/2"
eth2_mode = "layer3"
eth2_vsys = "vsys1"
eth2_ip = "192.168.55.10/24"

# Eth3 Interface
eth3_name = "ethernet1/3"
eth3_mode = "layer3"
eth3_vsys = "vsys1"
eth3_dhcp          = true
eth3_default_route = true
eth3_dhcp_send_hostname_enable = true

# Eth5 Interface
eth4_name = "ethernet1/4"
eth4_mode = "layer3"
eth4_vsys = "vsys1"
eth4_dhcp          = true
eth4_default_route = true
eth4_dhcp_send_hostname_enable = true

# Eth5 Interface
eth5_name = "ethernet1/5"
eth5_mode = "layer3"
eth5_vsys = "vsys1"
eth5_dhcp          = true
eth5_default_route = true
eth5_dhcp_send_hostname_enable = true


# HA-1 Interface
eth8_name = "ethernet1/8"
eth8_mode = "ha"
eth8_vsys = "vsys1"
eth8_comment = "HA1 Interface"

# HA-2 Interface
eth9_name = "ethernet1/9"
eth9_mode = "ha"
eth9_vsys = "vsys1"
eth9_comment = "HA2 Interface"



l3_mode = "layer3"
l2_mode = "layer2"
ha_mode = "ha"
vsys1 = "vsys1"