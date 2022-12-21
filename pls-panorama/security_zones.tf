##############################################################
####################### Security zones    ####################
resource "panos_panorama_zone" "wan" {
  name       = "wan"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.wan.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}

resource "panos_panorama_zone" "Users" {
  name       = "Users"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.Users.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}


resource "panos_panorama_zone" "DAAS" {
  name       = "DAAS"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.DAAS.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}

resource "panos_panorama_zone" "CriticalInfrastructure" {
  name       = "CriticalInfrastructure"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.CriticalInfrastructure.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}

resource "panos_panorama_zone" "IOT" {
  name       = "IOT"
  mode       = "layer3"
  interfaces = [panos_panorama_ethernet_interface.IOT.name]
  template   = panos_panorama_template.pa-vm-0_template.name
}