resource "panos_panorama_ethernet_interface" "wan" {
  name                      = var.eth1_name
  comment                   = var.eth1_comment
  vsys                      = var.eth1_vsys
  mode                      = var.eth1_mode
  enable_dhcp               = true
  create_dhcp_default_route = true
  dhcp_send_hostname_enable = true
  template                  = var.template
}

resource "panos_panorama_ethernet_interface" "Users" {
  name       = var.eth2_name
  comment    = var.eth2_comment
  vsys       = var.eth2_vsys
  mode       = var.eth2_mode
  static_ips = var.eth2_ip
  #enable_dhcp               = true
  #create_dhcp_default_route = true
  #dhcp_send_hostname_enable = true
  template = var.template
}

resource "panos_panorama_ethernet_interface" "DAAS" {
  name       = var.eth3_name
  comment    = var.eth3_comment
  vsys       = var.eth3_vsys
  mode       = var.eth3_mode
  static_ips = var.eth3_ip
  #enable_dhcp               = true
  #create_dhcp_default_route = true
  #dhcp_send_hostname_enable = true
  template = var.template
}

resource "panos_panorama_ethernet_interface" "CriticalInfrastructure" {
  name       = var.eth4_name
  comment    = var.eth4_comment
  vsys       = var.eth4_vsys
  mode       = var.eth4_mode
  static_ips = var.eth4_ip
  #enable_dhcp               = true
  #create_dhcp_default_route = true
  #dhcp_send_hostname_enable = true
  template = var.template
}

resource "panos_panorama_ethernet_interface" "IOT" {
  name       = var.eth5_name
  comment    = var.eth5_comment
  vsys       = var.eth5_vsys
  mode       = var.eth5_mode
  static_ips = var.eth5_ip
  #enable_dhcp               = true
  #create_dhcp_default_route = true
  #dhcp_send_hostname_enable = true
  template = var.template
}



#resource "panos_panorama_ethernet_interface" "web" {
#    name        = "ethernet1/2"
#    comment     = "web interface"
#    vsys        = "vsys1"
#    mode        = "layer3"
#    enable_dhcp = true
#    template    = panos_panorama_template.demo_template.name
#}
#
#resource "panos_panorama_ethernet_interface" "db" {
#    name        = "ethernet1/3"
#    comment     = "database interface"
#    vsys        = "vsys1"
#    mode        = "layer3"
#    enable_dhcp = true
#    template    = panos_panorama_template.demo_template.name
#}

resource "panos_panorama_ethernet_interface" "ha-1" {
  name    = var.eth8_name
  comment = var.eth8_comment
  vsys    = var.eth8_vsys
  mode    = var.eth8_mode
  #    enable_dhcp               = true
  #    create_dhcp_default_route = true
  #template                  = panos_panorama_template.demo_template.name
  template = var.template
}
resource "panos_panorama_ethernet_interface" "ha-2" {
  name    = var.eth9_name
  comment = var.eth9_comment
  vsys    = var.eth9_vsys
  mode    = var.eth9_mode
  #    enable_dhcp               = true
  #    create_dhcp_default_route = true
  #template                  = panos_panorama_template.demo_template.name
  template = var.template
}