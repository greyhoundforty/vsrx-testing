data "ibm_compute_ssh_key" "deploymentKey" {
  label = var.ssh_key
}

data "ibm_network_vlan" "public_vlan" {
  number          = var.public_vlan
  router_hostname = "fcr01a.wdc07"
}

data "ibm_network_vlan" "private_vlan" {
  number          = var.private_vlan
  router_hostname = "bcr01a.wdc07"
}