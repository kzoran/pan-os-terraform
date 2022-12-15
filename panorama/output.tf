output "zone_wan" {
    value = panos_panorama_zone.wan.name
}
output "interface_wan" {
    value = panos_panorama_ethernet_interface.wan.name
}