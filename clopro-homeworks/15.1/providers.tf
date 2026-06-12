terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = "~>1.12.2"
}

provider "yandex" {
  cloud_id                 = "b1grtf2ep0fktgq5ohag"
  folder_id                = "b1g43km07u2h7cdiscsm"
  service_account_key_file = file("~/.authorized_key.json")
}
