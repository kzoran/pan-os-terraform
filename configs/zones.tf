provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}

resource "panos_zone" "untrust" {
  name       = "untrust"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth1.name}"]
}

resource "panos_zone" "web" {
  name       = "web"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth2.name}"]
}

resource "panos_zone" "db" {
  name       = "db"
  mode       = "layer3"
  interfaces = ["${panos_ethernet_interface.eth3.name}"]
}
