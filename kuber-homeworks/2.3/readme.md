### Задание 1: Работа с ConfigMaps
1. Создал [deployment.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/deployment.yaml)
2. Подключил в [configmap-web.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.3/configmap-web.yaml)
3. Проверил
<img width="945" height="467" alt="image" src="https://github.com/user-attachments/assets/beffa38e-cc2d-4c4c-9e44-183b5f862477" />

### Задание 2: Настройка HTTPS с Secrets
1. Сгенерировать SSL-сертификат
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout tls.key -out tls.crt -subj "/CN=myapp.example.com"
2. Создать Secret
3. Настроить Ingress
4. Проверить HTTPS-доступ

Что сдать на проверку
Манифесты:
secret-tls.yaml
ingress-tls.yaml
Скриншот вывода curl -k

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

