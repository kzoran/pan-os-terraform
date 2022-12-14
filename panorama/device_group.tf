resource "panos_device_group" "pa-vm-0-dg" {
  #name = "PA-VM-0-DG"
  name        = var.device_group
  description = "Device Group for PA-VM HA Pair"
  device {
    serial = var.serial1
  }
  device {
    serial = var.serial2
  }
  lifecycle {
    create_before_destroy = true
  }
}