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

resource "panos_panorama_ethernet_interface" "eth2" {
    name                      = var.eth2_name
    comment                   = var.eth2_comment
    vsys                      = var.eth2_vsys
    mode                      = var.eth2_mode
    enable_dhcp               = true
    create_dhcp_default_route = true
    dhcp_send_hostname_enable = true
    template                  = var.template
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
    name                      = var.eth8_name
    comment                   = var.eth8_comment
    vsys                      = var.eth8_vsys
    mode                      = var.eth8_mode
#    enable_dhcp               = true
#    create_dhcp_default_route = true
    #template                  = panos_panorama_template.demo_template.name
   template                  = var.template
}
resource "panos_panorama_ethernet_interface" "ha-2" {
    name                      = var.eth9_name
    comment                   = var.eth9_comment
    vsys                      = var.eth9_vsys
    mode                      = var.eth9_mode
#    enable_dhcp               = true
#    create_dhcp_default_route = true
    #template                  = panos_panorama_template.demo_template.name
   template                  = var.template
}