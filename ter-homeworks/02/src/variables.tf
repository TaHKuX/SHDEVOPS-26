###cloud vars


variable "cloud_id" {
  type        = string
  default     = "b1grtf2ep0fktgq5ohag"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1g43km07u2h7cdiscsm"
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
  description = "VPC network & subnet name"
}


###ssh vars

# variable "vms_ssh_root_key" {
#   type        = string
#   default     = ""
#   description = "ssh-keygen -t ed25519"
# }

variable "name_1" {
  type        = string
  default     = "netology"
}

variable "name_2" {
  type        = string
  default     = "develop"
}

variable "name_3" {
  type        = string
  default     = "platform"
}