# Для vm_web

variable "vm_web_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_web_name" {
  type = string
  default = "netology-develop-platform-web"
}

variable "vm_web_plarform_id" {
  type = string
  default = "standard-v3"
}

# variable "vm_web_cores" {
#   type = number
#   default = 2
# }

# variable "vm_web_memory" {
#   type = number
#   default = 1
# }

# variable "vm_web_core_fraction" {
#   type = number
#   default = 20
# }

variable "vm_web_preemptible" {
  type = bool
  default = true
}

variable "vm_web_nat" {
  type = bool
  default = true
}

# variable "vm_web_metadata" {
#   type = map(any)
#   default = {
#     serial-port-enable = 1
#     ssh-keys           = ""
#   }
# }

# Для vm_db

variable "vm_db_family" {
  type = string
  default = "ubuntu-2004-lts"
}

variable "vm_db_name" {
  type = string
  default = "netology-develop-platform-db"
}

variable "vm_db_plarform_id" {
  type = string
  default = "standard-v3"
}

# variable "vm_db_cores" {
#   type = number
#   default = 2
# }

# variable "vm_db_memory" {
#   type = number
#   default = 2
# }

# variable "vm_db_core_fraction" {
#   type = number
#   default = 20
# }

variable "vm_db_preemptible" {
  type = bool
  default = true
}

variable "vm_db_nat" {
  type = bool
  default = true
}

# variable "vm_db_metadata" {
#   type = map(any)
#   default = {
#     serial-port-enable = 1
#     ssh-keys           = ""
#   }
# }

variable "vms_resources" {
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
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "vm_metadata" {
  type = map(any)
  default = {
    serial-port-enable = 1
    ssh-keys           = ""
  }
}