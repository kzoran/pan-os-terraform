provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}





resource "panos_nat_rule_group" "nat" {
  rule {
    name = "Web SSH"

    original_packet {
      source_zones          = ["${panos_zone.untrust.name}"]
      source_addresses      = ["any"]
      destination_zone      = "${panos_zone.untrust.name}"
      destination_addresses = ["192.168.55.20"]
      service               = "${panos_service_object.service-tcp-221.name}"
    }

    translated_packet {
      source {
        dynamic_ip_and_port {
          interface_address {
            interface = "${panos_ethernet_interface.eth2.name}"
          }
        }
      }

      destination = {
        static {
          address = "${panos_address_object.web-srv.name}"
          port    = "22"
        }
      }
    }
  }

  rule {
    name = "DB SSH"

    original_packet {
      source_zones          = ["${panos_zone.untrust.name}"]
      source_addresses      = ["any"]
      destination_zone      = "${panos_zone.untrust.name}"
      destination_addresses = ["192.168.55.20"]
      service               = "${panos_service_object.service-tcp-222.name}"
    }

    translated_packet {
      source {
        dynamic_ip_and_port {
          interface_address {
            interface = "${panos_ethernet_interface.eth3.name}"
          }
        }
      }

      destination = {
        static {
          address = "${panos_address_object.db-srv.name}"
          port    = "22"
        }
      }
    }
  }

  rule {
    name = "WordPress NAT"

    original_packet {
      source_zones          = ["${panos_zone.untrust.name}"]
      source_addresses      = ["any"]
      destination_zone      = "${panos_zone.untrust.name}"
      destination_addresses = ["192.168.55.20"]
      service               = "service-http"
    }

    translated_packet {
      source {
        dynamic_ip_and_port {
          interface_address {
            interface = "${panos_ethernet_interface.eth2.name}"
          }
        }
      }

      destination = {
        static {
          address = "${panos_address_object.web-srv.name}"
        }
      }
    }
  }

  rule {
    name = "Outgoing traffic"

    original_packet {
      source_zones          = ["${panos_zone.web.name}", "${panos_zone.db.name}"]
      source_addresses      = ["any"]
      destination_zone      = "${panos_zone.untrust.name}"
      destination_addresses = ["any"]
    }

    translated_packet {
      source {
        dynamic_ip_and_port {
          interface_address {
            interface = "${panos_ethernet_interface.eth1.name}"
          }
        }
      }

      destination {}
    }
  }
}