resource "panos_virtual_router" "VR1" {
  name = "VR1"
  #description = "Virtual router created with TF for PA-VM-0 template"
  #static_dist = 15
  interfaces = [
    panos_panorama_ethernet_interface.wan.name
    #    panos_ethernet_interface.e2.name,
  ]
  template = var.template
  vsys     = "vsys1"

  lifecycle {
    create_before_destroy = true
  }
}
