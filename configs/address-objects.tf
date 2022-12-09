provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}

resource "panos_address_object" "web-srv" {
  name  = "web-srv"
  value = "192.168.45.5"
}

resource "panos_address_object" "db-srv" {
  name  = "db-srv"
  value = "192.168.35.5"
}