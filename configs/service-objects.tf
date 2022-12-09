provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}

resource "panos_service_object" "service-tcp-221" {
  name             = "service-tcp-221"
  protocol         = "tcp"
  destination_port = "221"
}

resource "panos_service_object" "service-tcp-222" {
  name             = "service-tcp-222"
  protocol         = "tcp"
  destination_port = "222"
}

