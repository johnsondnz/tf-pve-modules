variable "target_pool_id" {
  type        = string
  default     = ""
  description = "Pool id to assign VM to."
}

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

variable "agent" {
  type        = bool
  default     = false
  description = "Is the qemu agent on this VM"
}


variable "on_boot" {
  type        = bool
  default     = false
  description = "Should this VM start on boot"
}

variable "started" {
  type        = bool
  default     = false
  description = "Should this VM be started after creation"
}

variable "reboot" {
  type        = bool
  default     = false
  description = "Should this VM be rebooted after creation"
}

variable "timeout_move_disk" {
  type        = string
  default     = "120"
  description = "Time to wait for disk move"
}

variable "timeout_clone" {
  type        = string
  default     = "120"
  description = "Time to wait for clone to finish"
}

variable "timeout_start_vm" {
  type        = string
  default     = "120"
  description = "Time to wait for VM to start"
}

variable "timeout_stop_vm" {
  type        = string
  default     = "120"
  description = "Time to wait for VM to stop"
}

variable "timeout_reboot" {
  type        = string
  default     = "120"
  description = "Time to wait for VM to reboot"
}

variable "timeout_shutdown_vm" {
  type        = string
  default     = "120"
  description = "Time to wait for VM to shutdown"
}
