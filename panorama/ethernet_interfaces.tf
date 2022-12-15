resource "panos_panorama_ethernet_interface" "wan" {
    name                      = "ethernet1/1"
    comment                   = "WAN interface"
    vsys                      = "vsys1"
    mode                      = "layer3"
    enable_dhcp               = true
    create_dhcp_default_route = true
    #template                  = panos_panorama_template.demo_template.name
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

resource "panos_panorama_ethernet_interface" "ha" {
    name                      = "ethernet1/8"
    comment                   = "HA interface"
    vsys                      = "vsys1"
    mode                      = "HA"
#    enable_dhcp               = true
#    create_dhcp_default_route = true
    #template                  = panos_panorama_template.demo_template.name
#   template                  = var.template
}