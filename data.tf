data "ibm_compute_ssh_key" "deploymentKey" {
  label = var.ssh_key
}

data "ibm_network_vlan" "public_workload_vlan" {
  name = var.public_vlan_name
}

data "ibm_network_vlan" "private_workload_vlan" {
  name = var.private_vlan_name
}