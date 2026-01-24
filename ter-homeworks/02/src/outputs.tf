output "output" {
    value = {
        platform = {
            instance_name = yandex_compute_instance.platform.name
            external_ip = yandex_compute_instance.platform.network_interface.*.nat_ip_address
            fqdn = yandex_compute_instance.platform.fqdn
        }
        platform_db = {
        instance_name1 = yandex_compute_instance.platform_db.name
        external_ip1 = yandex_compute_instance.platform_db.network_interface.*.nat_ip_address
        fqdn1 = yandex_compute_instance.platform_db.fqdn
        }
    }
}