data "yandex_client_config" "client" {}

resource "yandex_storage_bucket" "public_bucket" {
  bucket     = "tahkux" 
  anonymous_access_flags {
    read = true
    list = false
  }
}

resource "yandex_storage_object" "public_picture" {
  bucket     = yandex_storage_bucket.public_bucket.id
  key          = "picture.jpg"
  source       = "./picture.jpg"
  content_type = "image/jpeg"
  acl          = "public-read"
}

output "file_public_url" {
  value       = "https://${yandex_storage_bucket.public_bucket.bucket_domain_name}/${yandex_storage_object.public_picture.key}"
  description = "Cсылка на картинку"
}