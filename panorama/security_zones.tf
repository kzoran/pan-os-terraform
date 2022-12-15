##############################################################
####################### Security zones    ####################
resource "panos_panorama_zone" "wan" {
  name       = "WAN"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.wan.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}