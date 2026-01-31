###cloud vars
variable "token" {
  type        = string
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}

variable "cloud_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network&subnet name"
}



variable "vm_platform_id" {
  type = string
  default = "standard-v3"
}

variable "vm_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
    main = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
    replica = {
      cores         = 2
      memory        = 1
      core_fraction = 20
    }
  }
}

variable "vm_disk" {
type = map(object({
    type     = string
    size     = number
  }))
  default = {
    web = {
      type    = "network-hdd"
      size    = 10
    }
    main = {
      type    = "network-hdd"
      size    = 11
    }
    replica = {
      type    = "network-hdd"
      size    = 10
    }
  }
}

variable "vm_preemptible" {
  type = bool
  default = true
}

variable "vm_nat" {
  type = bool
  default = true
}

variable "vm_serial_port" {
  type        = number
  default     = 1
  description = "serial-port-enable"
}

variable "vm_ssh_key" {
  type        = string
  description = "ssh-keygen -t ed25519"
}

variable "vm_ubuntu" {
  type = string
  default = "ubuntu-2004-lts"
}