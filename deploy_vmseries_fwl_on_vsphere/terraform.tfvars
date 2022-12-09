# vCenter Info
user = "autobot@plslab.net"
vsphere_server = "10.2.0.3"
password = "mysecretpass"

# VM specifications for init-cfg
vsphere_datacenter = "PLSLAB"
vsphere_vm_name = "PA-VM-TF-01"
vsphere_vm_template = "pa-vm-template"
vsphere_vm_folder = "TF-RAMA1"
vsphere_cluster = "HX-AllNVMe-01"
vsphere_vcpu_number = "2"
vsphere_memory_size = "6656"
vsphere_datastore = "hx-allnvme-ds01"
vsphere_port_group_mgmt = "Management_OOB"
vsphere_port_group_untrust = "WAN"
vsphere_port_group_trust = "Trusted"
pavm_hostname = "PA-VM-TF-01"
#variable "pavm_ip_address" {
 # description = "VM-Series management IP address (Optional)"
#}
##variable "pavm_netmask" {
#  description = "VM-Series management netmask (Optional)"
#}
#variable "pavm_gateway" {
#  description = "VM-Series management gateway (Optional)"
pavm_dns_primary = "192.168.2.2"
pavm_dns_secondary = "10.2.2.1"
panorama_server_ip = "192.168.2.10"
panorama_server_ip_2 = "192.168.2.11"
panorama_tplname = "unprovisioned-stack"
panorama_dgname = "unprovisioned" 
panorama_vm_auth_key = "8675309"
pavm_authcode = "D8675309"
#  description = "VM-Series license auth code (Optional)"