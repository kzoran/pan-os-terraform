provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}

resource "panos_virtual_router" "default" {
  name = "default"

  interfaces = [
    "${panos_ethernet_interface.eth1.name}",
    "${panos_ethernet_interface.eth2.name}",
    "${panos_ethernet_interface.eth3.name}",
  ]
}

resource "panos_static_route_ipv4" "default" {
  name           = "default"
  virtual_router = "${panos_virtual_router.default.name}"
  destination    = "0.0.0.0/0"
  next_hop       = "192.168.55.2"
}
