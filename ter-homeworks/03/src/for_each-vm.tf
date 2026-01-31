resource "yandex_compute_instance" "db" {
    for_each = toset([ "main", "replica" ])
    name = "${each.key}"
    platform_id = var.vm_platform_id
    zone        = var.default_zone
    resources {
        cores         = var.vm_resources[each.key].cores
        memory        = var.vm_resources[each.key].memory
        core_fraction = var.vm_resources[each.key].core_fraction
    }
    boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.vm_disk[each.key].type
      size     = var.vm_disk[each.key].size
    }
    }
    scheduling_policy {
    preemptible = var.vm_preemptible
    }
    network_interface {
        subnet_id          = yandex_vpc_subnet.develop.id
        nat                = var.vm_nat
    }
    metadata = {
        serial-port-enable = var.vm_serial_port
        ssh-keys           = local.vm_ssh_key
    }
}
