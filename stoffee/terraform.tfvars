# vCenter Info
user           = "autobot@plslab.net"
vsphere_server = "10.2.0.3"
password       = "SuperSecretPass"

# VM specifications for init-cfg
vsphere_datacenter         = "PLSLAB"
vsphere_vm_name            = "PA-FSO-DAL-1B"
vsphere_vm_template        = "pa-vm-template"
vsphere_vm_folder          = "TF-FSO-DAL-1B"
vsphere_cluster            = "HX-AllNVMe-01"
vsphere_vcpu_number        = "2"
vsphere_memory_size        = "6656"
vsphere_datastore          = "hx-allnvme-ds01"
vsphere_port_group_mgmt    = "Management_OOB"
vsphere_port_group_untrust = "WAN"
vsphere_port_group_trust   = "DMZ"
vsphere_port_group_eth3    = "unassigned"
#ip_type                    = "static" # static or dhcp-client
pavm_hostname              = "PA-FSO-DAL-1B"
pavm_ip_address            = "192.168.2.131"
pavm_netmask               = "255.255.255.0"
pavm_gateway               = "192.168.2.1"
#variable "pavm_ip_address" {
# description = "VM-Series management IP address (Optional)"
#}
##variable "pavm_netmask" {
#  description = "VM-Series management netmask (Optional)"
#}
#variable "pavm_gateway" {
#  description = "VM-Series management gateway (Optional)"
pavm_dns_primary     = "192.168.2.2"
pavm_dns_secondary   = "10.2.2.1"
panorama_server_ip   = "192.168.2.10"
panorama_server_ip_2 = "192.168.2.11"
panorama_tplname     = "FSO-Template-Stack"
panorama_dgname      = "FSO-NAM-DG"
#panorama_vm_auth_key = ""
auth-key = "_AQ__8xBFvLS8jElXvVE0f9zBWlJQMH"
#pavm_authcode        = "D8675309"
#  description = "VM-Series license auth code (Optional)"