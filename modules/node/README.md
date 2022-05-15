<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 0.5.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 0.5.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_virtual_environment_vm.server](https://registry.terraform.io/providers/bpg/proxmox/0.5.2/docs/resources/virtual_environment_vm) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cpu_cores"></a> [cpu\_cores](#input\_cpu\_cores) | The number of vCPUs cores to assign to the VM | `string` | `"1"` | no |
| <a name="input_cpu_sockets"></a> [cpu\_sockets](#input\_cpu\_sockets) | The number of vCPUs sockets to assign to the VM | `string` | `"1"` | no |
| <a name="input_deploy_count"></a> [deploy\_count](#input\_deploy\_count) | Number of VMs to deploy | `string` | `"3"` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of RAM to assign to the VM | `string` | `"2048"` | no |
| <a name="input_on_boot"></a> [on\_boot](#input\_on\_boot) | Should this VM start on boot | `bool` | `true` | no |
| <a name="input_source_vm"></a> [source\_vm](#input\_source\_vm) | The source VM to clone from | `string` | `"8000"` | no |
| <a name="input_started"></a> [started](#input\_started) | Should this VM be started after creation | `bool` | `true` | no |
| <a name="input_target_datacentre"></a> [target\_datacentre](#input\_target\_datacentre) | The name of the datacentre the VM should be deployed to. | `string` | `"home"` | no |
| <a name="input_target_disk_size"></a> [target\_disk\_size](#input\_target\_disk\_size) | The disk size to assign to the VM | `string` | `"20"` | no |
| <a name="input_target_host"></a> [target\_host](#input\_target\_host) | The name of the cluster the VMs should be deployed to. | `string` | `"pve1"` | no |
| <a name="input_target_name"></a> [target\_name](#input\_target\_name) | The name to assign to the VM | `string` | `"ubuntu"` | no |
| <a name="input_target_storage"></a> [target\_storage](#input\_target\_storage) | The name of the datastore the VMs should be deployed to. | `string` | `"local-lvm"` | no |
| <a name="input_target_vlan"></a> [target\_vlan](#input\_target\_vlan) | The VLAN the VM should be deployed to | `string` | `"0"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->