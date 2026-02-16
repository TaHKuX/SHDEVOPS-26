## Playbook который устанавлиает ClickHouse, Vector и Lighthouse (+Nginx)
Всем привет, вашему вниманию предоставляется Playbook который устанавливает ClickHouse, Vector и Lighthouse (+Nginx)
1. Первым делом скачайте себе данный каталог со всеми файлами
2. Зайдите в `inventory/prod.yml` и укажите адреса ваших хостов
3. Зайдите в `group_vars` и при необходимости измените переменные
  - `clickhouse_version` = Версия ClickHouse
  - `clickhouse_packages` = Пакеты для установки
  - `lighthouse_dir` = Директория для Lighthouse
  - `nginx_conf_dir` = Директория конфигурации Nginx
  - `vector_version` = Версия Vector
  - `vector_arch` = Архитектура (определяется автоматически)
  - `vector_tarball` = Имя архива
  - `vector_url` = URL для скачивания Vector
  - `vector_install_dir` = Директория установки Vector
4. Запустите Playbook командой `ansible-playbook -i inventory/prod.yml site.yml`
5. Готово, вы прекрасны!
