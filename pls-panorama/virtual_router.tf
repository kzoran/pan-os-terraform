
#resource "panos_static_route_ipv4" "default_route_VR1" {
#    name = "localnet"
#    virtual_router = panos_virtual_router.VR1.name
#    destination = "0.0.0.0/0"
#    next_hop = "172.21.31.1"
#
#    lifecycle {
#        create_before_destroy = true
#    }
#}
#
#

resource "panos_virtual_router" "VR1" {
  name = var.vr_name
  #description = "Virtual router created with TF for PA-VM-0 template"
  #static_dist = 15
  interfaces = [
    panos_panorama_ethernet_interface.wan.name
    panos_panorama_ethernet_interface.Users.name,
    panos_panorama_ethernet_interface.DAAS.name,
    panos_panorama_ethernet_interface.CriticalInfrastructure.name,
    panos_panorama_ethernet_interface.IOT.name
  ]
  template = var.template
  #vsys     = "vsys1"

  lifecycle {
    create_before_destroy = true
  }
}

