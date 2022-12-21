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
stack = "PA-VM-0-stack"

#########################################
######### PA-VM Series info #############

serial2 = "007951000346611"
serial1 = "007951000346600"


################################################
######### Firewall Network Interfaces  #########
######## Comment out unused interfaces  ########

# WAN Interface
eth1_name    = "ethernet1/1"
eth1_mode    = "layer3"
eth1_vsys    = "vsys1"
eth1_comment = "WAN Interface"


# Eth2 Interface
eth2_name    = "Users"
eth2_mode    = "layer3"
eth2_vsys    = "vsys1"
eth2_ip      = ["192.168.45.10/24"]
eth2_comment = "Interface eth2 - Users"

# Eth3 Interface
eth3_name = "DAAS"
eth3_mode = "layer3"
eth3_vsys = "vsys1"
eth3_ip      = ["192.168.35.10/24"] 
eth3_comment = "Interface eth3 - DAAS"

# Eth5 Interface
eth4_name = "CriticalInfrastructure"
eth4_mode = "layer3"
eth4_vsys = "vsys1"
eth4_ip      = ["192.168.25.10/24"]
eth4_comment = "Interface eth4 Critical Infrastructure"

# Eth5 Interface
eth5_name = "IOT"
eth5_mode = "layer3"
eth5_vsys = "vsys1"
eth5_ip      = ["192.168.15.10/24"]
eth5_comment = " Interface eth 5 - IOT"

# HA-1 Interface
eth8_name    = "ethernet1/8"
eth8_mode    = "ha"
eth8_vsys    = "vsys1"
eth8_comment = "HA1 Interface"

# HA-2 Interface
eth9_name    = "ethernet1/9"
eth9_mode    = "ha"
eth9_vsys    = "vsys1"
eth9_comment = "HA2 Interface"

#####################################
##########  Virtual Router ##########

vr_name = "VR1"