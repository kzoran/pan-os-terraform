resource "panos_virtual_router" "VR1" {
    name = "VR1"
    #static_dist = 15
    #interfaces = [
    #    panos_ethernet_interface.e1.name,
    #    panos_ethernet_interface.e2.name,
    #]

    lifecycle {
        create_before_destroy = true
    }
}