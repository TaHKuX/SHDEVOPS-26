### Задание 1: Работа с ConfigMaps
1. Создал [deployment.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/deployment.yaml)
2. Подключил в [configmap-web.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/configmap-web.yaml)
3. Проверил
<img width="945" height="467" alt="image" src="https://github.com/user-attachments/assets/beffa38e-cc2d-4c4c-9e44-183b5f862477" />

### Задание 2: Настройка HTTPS с Secrets
1. Сгенерировал
2. Создал [secret-tls.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/secret-tls.yaml)
3. Настроил в [ingress-tls.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/ingress-tls.yaml)
4. Проверил
<img width="708" height="219" alt="image" src="https://github.com/user-attachments/assets/82651278-4009-4109-a81d-e8f2a73d7753" />

### Задание 3: Настройка RBAC
1. Включите RBAC в microk8s
microk8s enable rbac
2. Создать SSL-сертификат для пользователя
openssl genrsa -out developer.key 2048
openssl req -new -key developer.key -out developer.csr -subj "/CN={ИМЯ ПОЛЬЗОВАТЕЛЯ}"
openssl x509 -req -in developer.csr -CA {CA серт вашего кластера} -CAkey {CA ключ вашего кластера} -CAcreateserial -out developer.crt -days 365
3. Создать Role (только просмотр логов и описания подов) и RoleBinding
4. Проверить доступ

Что сдать на проверку
Манифесты:
role-pod-reader.yaml
rolebinding-developer.yaml
Команды генерации сертификатов
Скриншот проверки прав (kubectl get pods --as=developer)

