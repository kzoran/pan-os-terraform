######################################################
#######  Panorama template and template stack  #######

resource "panos_panorama_template" "demo_template" {
  name = var.template
}

resource "panos_panorama_template_stack" "demo_stack" {
  name      = var.stack
  templates = [panos_panorama_template.demo_template.name]
}