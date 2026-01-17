### Чек-лист готовности к домашнему заданию
<img width="447" height="139" alt="image" src="https://github.com/user-attachments/assets/4938797e-7195-4ded-8941-d471a6ea8498" />

### Задание 1
2. В файле personal.auto.tfvars
3. "result": "nPnIiE5jgvrX5IZ2"
4. В строке `resource "docker_image"` не хватает имени ресурса -> `resource "docker_image" "nginx"`\
   В строке `resource "docker_container" "1nginx"` имя не может начинаться с цифры -> `resource "docker_container" "nginx1"`\
   В строке `name  = "example_${random_password.random_string_FAKE.resulT}"` ссылаемся на необъявленный ресурс и ключ -> `name  = "example_${random_password.random_string.result}"`
5.
<img width="1300" height="346" alt="image" src="https://github.com/user-attachments/assets/daeb95c2-81d1-45d7-80ea-972672c90d5f" />

6. Опасность - можеть удалить то, что на самом деле мы не хотели = потеряем данные\
   Пригодиться - в автоматизациях (например в скриптах или CI/CD)
<img width="1093" height="91" alt="image" src="https://github.com/user-attachments/assets/e9fb8961-3970-4aaf-ad1d-8f28572ac276" />

7. `{`\
  `"version": 4,`\
  `"terraform_version": "1.12.2",`\
  `"serial": 19,`\
  `"lineage": "82282df9-9020-57d8-4e73-de1f68a7c816",`\
  `"outputs": {},`\
  `"resources": [],`\
  `"check_results": null`\
  `}`
8. `keep_locally = true`\
   keep_locally(Логическое значение) Если true, то образ Docker не будет удален при операции уничтожения. Если false, то образ будет удален из локального хранилища Docker при операции уничтожения.
### Задание 2*

### Задание 3*
