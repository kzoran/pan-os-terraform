#===============================================================================
# vSphere Provider
#===============================================================================
provider "vsphere" {
 # version        = "1.5.0"
  vsphere_server = "${var.vsphere_server}"
  user           = "${var.user}"
  password       = "${var.password}"

  allow_unverified_ssl = "true"
}


############################################################################################
# PROCESS EACH MODULE IN ORDER
############################################################################################

## Add bootstrap module here.

module "vmseries1" {
  source = "./modules/vmseries1"