provider "panos" {
  hostname = "${var.panos_hostname}"
  username = "${var.panos_username}"
  password = "${var.panos_password}"
}




resource "panos_security_policy" "rulebase" {
  rule {
    name                  = "Allow ping"
    source_zones          = ["any"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["any"]
    applications          = ["ping"]
    services              = ["application-default"]
    categories            = ["any"]
  }

  rule {
    name                  = "SSH inbound"
    source_zones          = ["${panos_zone.untrust.name}"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["${panos_zone.web.name}", "${panos_zone.db.name}"]
    destination_addresses = ["any"]
    applications          = ["ping", "ssh"]

    services = [
      "${panos_service_object.service-tcp-221.name}",
      "${panos_service_object.service-tcp-222.name}",
    ]

    categories = ["any"]
  }

  rule {
    name                  = "Web inbound"
    source_zones          = ["${panos_zone.untrust.name}"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["${panos_zone.web.name}"]
    destination_addresses = ["any"]
    applications          = ["any"]
    services              = ["service-http"]
    categories            = ["any"]
  }

  rule {
    name                  = "Web to DB"
    source_zones          = ["any"]
    source_addresses      = ["${panos_address_object.web-srv.name}"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["any"]
    destination_addresses = ["${panos_address_object.db-srv.name}"]
    applications          = ["mysql"]
    services              = ["application-default"]
    categories            = ["any"]
  }

  rule {
    name                  = "Allow outbound"
    source_zones          = ["${panos_zone.db.name}", "${panos_zone.web.name}"]
    source_addresses      = ["any"]
    source_users          = ["any"]
    hip_profiles          = ["any"]
    destination_zones     = ["${panos_zone.untrust.name}"]
    destination_addresses = ["any"]
    applications          = ["any"]
    services              = ["application-default"]
    categories            = ["any"]
  }
}