variable "target_datacentre" {
  type        = string
  default     = "home"
  description = "The name of the datacentre the VM should be deployed to."
}

variable "target_host" {
  type        = string
  default     = "pve1"
  description = "The name of the cluster the VMs should be deployed to."
}

variable "target_storage" {
  type        = string
  default     = "local-lvm"
  description = "The name of the datastore the VMs should be deployed to."
}

variable "target_vlan" {
  type        = string
  default     = "0"
  description = "The VLAN the VM should be deployed to"
}

variable "cpu_sockets" {
  type        = string
  default     = "1"
  description = "The number of vCPUs sockets to assign to the VM"
}

variable "cpu_cores" {
  type        = string
  default     = "1"
  description = "The number of vCPUs cores to assign to the VM"
}

variable "memory" {
  type        = string
  default     = "2048"
  description = "The amount of RAM to assign to the VM"
}

variable "source_vm" {
  type        = string
  default     = "8000"
  description = "The source VM to clone from"
}

variable "target_disk_size" {
  type        = string
  default     = "20"
  description = "The disk size to assign to the VM"
}

variable "target_name" {
  type        = string
  default     = "ubuntu"
  description = "The name to assign to the VM"
}

variable "deploy_count" {
  type        = string
  default     = "3"
  description = "Number of VMs to deploy"
}

variable "on_boot" {
  type        = bool
  default     = true
  description = "Should this VM start on boot"
}

variable "started" {
  type        = bool
  default     = true
  description = "Should this VM be started after creation"
}

variable "reboot" {
  type        = bool
  default     = false
  description = "Should this VM be rebotted after creation"
}
