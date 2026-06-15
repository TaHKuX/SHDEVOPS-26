[bucket.tf](https://github.com/TaHKuX/SHDEVOPS-26/blob/main/clopro-homeworks/15.2/bucket.tf), [gruppa.tf](https://github.com/TaHKuX/SHDEVOPS-26/blob/main/clopro-homeworks/15.2/gruppa.tf) и [balance.tf](https://github.com/TaHKuX/SHDEVOPS-26/blob/main/clopro-homeworks/15.2/balance.tf)
1. Создал бакет Object Storage и разместил в нём файл с картинкой
2. Создал группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета
3. Подключил группу к сетевому балансировщику

P.S. Делал поэтапно и в конце дошёл до ожидаемого результата, но после того как решил дополнить `metadata` для ВМ (что бы видеть IP и название инстанса, как было на демонстрации) при их пересоздании столкнулся с ошибкой `[RESOURCE_EXHAUSTED] Quota vpc.externalAddressesCreation.rate exceeded`\
Поддержка YC ответила что это внутренние лимиты и едиственный вариант попробовать позже (уже пробовал позже, но ошибка сохраняется)\
Не знаю когда точно спадут лимиты (поддержка YC не может сообщить), если позже (после обнуления лимитов) успею по новой всё развернуть - дополню актуальным скриншотом

<img width="1367" height="351" alt="image" src="https://github.com/user-attachments/assets/b648ab92-32b4-4ecf-9ecb-2bcbac2f235a" />
