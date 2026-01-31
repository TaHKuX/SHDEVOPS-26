locals {
  web = {
    for index, vm in yandex_compute_instance.web : 
    "web-${index}" => {
      external_ip = vm.network_interface[0].nat_ip_address
      fqdn        = vm.fqdn
    }
  }

  db = {
    for vm_name, vm in yandex_compute_instance.db :
    vm_name => {
      external_ip = vm.network_interface[0].nat_ip_address
      fqdn        = vm.fqdn
    }
  }

  storage = {
    "storage" = {
      external_ip = yandex_compute_instance.storage.network_interface[0].nat_ip_address
      fqdn        = yandex_compute_instance.storage.fqdn
    }
  }
}

resource "local_file" "ansible_inventory" {
  filename = "${path.module}/inventory.ini"
  content = templatefile("${path.module}/inventory.tftpl", {
    web = local.web
    db  = local.db
    storage    = local.storage
  })
}