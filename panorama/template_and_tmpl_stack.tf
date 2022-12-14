######################################################
#######  Panorama template and template stack  #######

resource "panos_panorama_template" "pa-vm-0_template" {
  name        = var.template
  description = "template for pa-vm-0 firewalls - created with terraform"





#  device { 
#    serial = var.serial1
#  }
#  device {
#    serial = var.serial2
#  }

  lifecycle {
    create_before_destroy = true
  }
}


#resource "panos_panorama_template_entry" "example_tmplentry" {
#template = "${panos_panorama_template.pa-vm-0_template.name}"
##serial = "007254000068426"
#serial = "007054000062810"
#}
#
#
#resource "panos_panorama_template_stack" "pa-vm-0_stack" {
#  name        = var.stack
#  description = "template stack name for pa-vm-o firewalls - created with terraform"
#  templates   = ["var.template"]
#  devices     = ["var.serial1", " var.serial2"]
#
#  lifecycle {
#    create_before_destroy = true
#  }
#}