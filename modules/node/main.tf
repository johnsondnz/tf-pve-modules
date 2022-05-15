resource "proxmox_virtual_environment_vm" "server" {
  name        = "${var.target_name}-${count.index + 1}"
  description = "Managed by Terraform"
  count       = var.deploy_count

  node_name = var.target_host

  timeout_move_disk   = "120"
  timeout_clone       = "120"
  timeout_start_vm    = "60"
  timeout_stop_vm     = "60"
  timeout_reboot      = "60"
  timeout_shutdown_vm = "60"
  tablet_device       = false

  clone {
    vm_id   = var.source_vm
    retries = 5
  }

  agent {
    enabled = false
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
}
