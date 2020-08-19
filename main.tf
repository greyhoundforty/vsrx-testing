resource "ibm_compute_vm_instance" "bastion" {
  hostname             = "vsrxbastion"
  domain               = var.domain
  os_reference_code    = var.os_image
  datacenter           = var.datacenter
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = false
  local_disk           = true
  user_metadata        = file("${path.module}/install.yml")
  flavor_key_name      = var.flavor
  tags                 = [var.datacenter, "ryantiffany"]
  ssh_key_ids          = [data.ibm_compute_ssh_key.deploymentKey.id]
  public_vlan_id = data.ibm_network_vlan.public_workload_vlan.id
  private_vlan_id = data.ibm_network_vlan.private_workload_vlan.id
}

resource "ibm_compute_vm_instance" "web_node" {
  count = var.instance_count
  hostname             = "${web}-${count.index+1}"
  domain               = var.domain
  os_reference_code    = var.os_image
  datacenter           = var.datacenter
  network_speed        = 1000
  hourly_billing       = true
  private_network_only = true
  local_disk           = true
  user_metadata        = file("${path.module}/install.yml")
  flavor_key_name      = var.flavor
  tags                 = [var.datacenter, "ryantiffany"]
  ssh_key_ids          = [data.ibm_compute_ssh_key.deploymentKey.id]
  private_vlan_id = data.ibm_network_vlan.private_workload_vlan.id
}

