######################################################
#######  Panorama template and template stack  #######

resource "panos_panorama_template" "pa-vm-0_template1" {
  name        = var.template1
  description = "template for pa-vm-0 firewalls - created with terraform"
    serial = var.serial1
#  device {
#    serial = var.serial2
#  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "panos_panorama_template_stack" "pa-vm-0_demo_stack" {
  name        = var.stack
  description = "template stack name for pa-vm-o firewalls - created with terraform"
  templates   = ["var.template1"]
  devices     = ["var.serial1", " var.serial2"]

  lifecycle {
    create_before_destroy = true
  }
}