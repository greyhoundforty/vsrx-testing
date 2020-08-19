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
  default     = "wdc07"
}

variable "ssh_key" {
  description = "Classic IaaS ssh key to add to compute instance."
  type        = string
  default     = "ryan_hyperion_2020"
}

variable "instance_count" {
  description = "Number of compute nodes to deploy."
  type        = string
  default     = "3"
}

variable "private_vlan_number" {
  description = "Private VLAN number associated with vSRX."
  type        = string
  default     = "3036"
}

variable "public_vlan_number" {
  description = "Public VLAN number associated with vSRX."
  type        = string
  default     = "1971"
}
