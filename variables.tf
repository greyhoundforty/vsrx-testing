variable "iaas_classic_username" {
  description = "IBM Cloud IaaS Username."
  type        = string
  default     = ""
}

variable "iaas_classic_api_key" {
  description = "IBM Cloud IaaS User API key."
  type        = string
  default     = ""
}

variable "os_image" {
  description = "Default operating system image for compute instance."
  type        = string
  default     = "UBUNTU_18_64"
}

variable "flavor" {
  description = "Default instance size."
  type        = string
  default     = "BL2_2X4X100"
}

variable "domain" {
  description = "Domain for compute instance."
  type        = string
  default     = "cdetesting.com"
}

variable "datacenter" {
  description = "Datacenter where instance will be deployed."
  type        = string
  default     = ""
}

variable "ssh_key" {
  description = "Classic IaaS ssh key to add to compute instance."
  type        = string
  default     = ""
}

variable "instance_count" {
  description = "Number of compute nodes to deploy."
  type        = string
  default     = "3"
}

variable "public_vlan_name" {
  description = "Name of the public VLAN where compute instances will be deployed."
  type        = string
   default =   ""
}

variable "private_vlan_name" {
  description = "Name of the private VLAN where compute instances will be deployed."
  type        = string
  default = ""
}
