data "ibm_compute_ssh_key" "deploymentKey" {
  label = var.ssh_key
}

data "ibm_network_vlan" "public_workload_vlan" {
  number = var.public_vlan_number
}

data "ibm_network_vlan" "private_workload_vlan" {
  number = var.private_vlan_number
}