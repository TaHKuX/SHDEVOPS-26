# data "yandex_compute_image" "ubuntu" {
#   family = var.vm_ubuntu
# }

# resource "yandex_compute_instance" "web" {
# count = 2
# name = "web-${count.index+1}"
# platform_id = var.vm_plarform_id
#   zone        = var.default_zone
#   resources {
#     cores         = var.vm_resources.web.cores
#     memory        = var.vm_resources.web.memory
#     core_fraction = var.vm_resources.web.core_fraction
#   }
#   boot_disk {
#     initialize_params {
#       image_id = data.yandex_compute_image.ubuntu.image_id
#     }
#   }
#   scheduling_policy {
#     preemptible = var.vm_preemptible
#   }
#   network_interface {
#     subnet_id          = yandex_vpc_subnet.develop.id
#     nat                = var.vm_nat
#   security_group_ids = yandex_vpc_security_group.example.id
#   }
#   metadata = {
#     serial-port-enable = var.vm_serial_port
#     ssh-keys           = var.vm_ssh_key
#   }
# }