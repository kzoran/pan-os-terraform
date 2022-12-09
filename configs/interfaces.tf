provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}

resource "panos_ethernet_interface" "eth1" {
  name       = "ethernet1/1"
  vsys       = "vsys1"
  mode       = "layer3"
  static_ips = ["192.168.55.20/24"]
}

resource "panos_ethernet_interface" "eth2" {
  name       = "ethernet1/2"
  vsys       = "vsys1"
  mode       = "layer3"
  static_ips = ["192.168.45.20/24"]
}

resource "panos_ethernet_interface" "eth3" {
  name       = "ethernet1/3"
  vsys       = "vsys1"
  mode       = "layer3"
  static_ips = ["192.168.35.20/24"]
}
