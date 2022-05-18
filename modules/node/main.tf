resource "proxmox_virtual_environment_vm" "server" {
  name        = var.target_name
  description = "Managed by Terraform"

  node_name = var.target_host
  pool_id   = var.target_pool_id

  timeout_move_disk   = var.timeout_move_disk
  timeout_clone       = var.timeout_clone
  timeout_start_vm    = var.timeout_start_vm
  timeout_stop_vm     = var.timeout_stop_vm
  timeout_reboot      = var.timeout_reboot
  timeout_shutdown_vm = var.timeout_shutdown_vm
  tablet_device       = false

  clone {
    vm_id   = var.source_vm
    retries = 5
  }

  agent {
    enabled = var.agent
  }

  cpu {
    sockets = var.cpu_sockets
    cores   = var.cpu_cores
  }

  memory {
    dedicated = var.memory
  }

  disk {
    datastore_id = var.target_storage
    size         = var.target_disk_size
    interface    = "scsi0"
  }

  network_device {
    vlan_id = var.target_vlan
  }

  on_boot = var.on_boot
  started = var.started
  reboot  = var.reboot
}
