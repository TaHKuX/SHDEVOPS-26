resource "yandex_compute_disk" "disk" {
    count = 3
    name  = "disk-${count.index}"
    zone  = var.default_zone
    type  = "network-hdd"
    size  = 1
}

resource "yandex_compute_instance" "storage" {
  name = "storage"
  platform_id = var.vm_platform_id
  zone        = var.default_zone
  resources {
    cores         = var.vm_resources.web.cores
    memory        = var.vm_resources.web.memory
    core_fraction = var.vm_resources.web.core_fraction
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
      type     = var.vm_disk.web.type
      size     = var.vm_disk.web.size
    }
  }
  dynamic "secondary_disk" {
    for_each = yandex_compute_disk.disk
    content {
        disk_id = secondary_disk.value.id
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