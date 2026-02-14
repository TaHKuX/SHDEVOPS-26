# Playbook который устанавлиает ClickHouse и Vector
Всем привет, вашему вниманию предоставляется Playbook с помощью которого можно установить ClickHouse и Vector
1. Первым делом зайдите в `inventory/prod.yml` и укажите адреса ваших хостов
2. Запустите Playbook командой `ansible-playbook -i inventory/prod.yml site.yml`
3. Готово, вы прекрасны!
