resource "yandex_lb_network_load_balancer" "balance" {
  name = "lamp-load-balancer"

  listener {
    name        = "http-listener"
    port        = 80
    target_port = 80
    external_address_spec {
      ip_version = "ipv4"
    }
  }

  attached_target_group {
    target_group_id = yandex_compute_instance_group.lamp_group.load_balancer[0].target_group_id

    healthcheck {
      name                = "http-health-check"
      interval            = 2
      timeout             = 1
      unhealthy_threshold = 2
      healthy_threshold   = 2
      http_options {
        port = 80
        path = "/index.html"
      }
    }
  }
}

output "load_balancer_public_ip" {
  value = [
    for listener in yandex_lb_network_load_balancer.balance.listener : [
      for spec in listener.external_address_spec : spec.address
    ]
  ]
  description = "IP-адрес балансировщика"
}