data "yandex_client_config" "client" {}

resource "yandex_kms_symmetric_key" "bucket_key" {
  name              = "bucket-encryption-key"
  description       = "Ключ KMS для защиты содержимого бакета"
  default_algorithm = "AES_256"
  rotation_period   = "8760h"
}

resource "yandex_storage_bucket" "public_bucket" {
  bucket     = "tahkux"
    anonymous_access_flags {
    read = true
    list = false
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.bucket_key.id
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "yandex_storage_object" "public_picture" {
  bucket       = yandex_storage_bucket.public_bucket.id
  key          = "picture.jpg"
  source       = "./picture.jpg"
  content_type = "image/jpeg"
  acl          = "public-read"
}

output "file_public_url" {
  value       = "https://${yandex_storage_bucket.public_bucket.bucket_domain_name}/${yandex_storage_object.public_picture.key}"
  description = "Cсылка на картинку"
}
