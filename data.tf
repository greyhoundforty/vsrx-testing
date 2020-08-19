data "ibm_compute_ssh_key" "deploymentKey" {
  label = var.ssh_key
}

data "ibm_network_vlan" "public_vlan" {
  number = var.public_vlan
}

data "ibm_network_vlan" "private_vlan" {
  number = var.private_vlan
}