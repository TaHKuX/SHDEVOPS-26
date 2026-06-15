data "yandex_iam_service_account" "tahkux" {
  name = "tahkux" 
}

data "yandex_vpc_network" "netology" {
  name = "vpc"
}

data "yandex_vpc_subnet" "public" {
  name = "public"
}

resource "yandex_compute_instance_group" "lamp_group" {
  name               = "lamp-fixed-group"
  folder_id          = data.yandex_client_config.client.folder_id
  service_account_id = data.yandex_iam_service_account.tahkux.id

  instance_template {
    platform_id = "standard-v3"
    
    resources {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }

    boot_disk {
      initialize_params {
        image_id = "fd827b91d99psvq5fjit"
        size     = 15
      }
    }

    network_interface {
      network_id = data.yandex_vpc_network.netology.id
      subnet_ids = [data.yandex_vpc_subnet.public.id]
      nat        = true
    }

    metadata = {
      ssh-keys  = "ubuntu:${file("~/.ssh/id_ed25519.pub")}"
      user-data = <<EOF
#cloud-config
runcmd:
  - export PUBLIC_IPV4=$(curl -s ifconfig.me)
  - export INSTANCE_NAME=$(hostname)
  - |
    echo "<!DOCTYPE html>
    <html>
    <head>
        <title>Privet</title>
    </head>
    <body>
        <h1>Che zval, Slark?</h1>
        <p><b>Name:</b> $INSTANCE_NAME</p>
        <p><b>IP adres:</b> $PUBLIC_IPV4</p>
        <p>Glavnoe ne razmer mecha, a kak ti c nim upravlayeshsya</p>
        <img src='https://${yandex_storage_bucket.public_bucket.bucket_domain_name}/${yandex_storage_object.public_picture.key}' alt='Picture'>
    </body>
    </html>" > /var/www/html/index.html
  - chown www-data:www-data /var/www/html/index.html
  - systemctl restart apache2
EOF
}
  }

  scale_policy {
    fixed_scale {
      size = 3
    }
  }

  deploy_policy {
    max_unavailable = 1
    max_creating    = 1
    max_expansion   = 1
    max_deleting    = 1
  }

  allocation_policy {
    zones = ["ru-central1-a"]
  }
  
  health_check {
    interval            = 10
    timeout             = 3
    unhealthy_threshold = 3
    healthy_threshold   = 2

    http_options {
      port = 80
      path = "/index.html"
    }
  }

  load_balancer {
    target_group_name = "lamp-vm-target-group"
  }
}

output "lamp_group_instances_ips" {
  value       = [for instance in yandex_compute_instance_group.lamp_group.instances : instance.network_interface.0.nat_ip_address]
  description = "IP адреса ВМ"
  }