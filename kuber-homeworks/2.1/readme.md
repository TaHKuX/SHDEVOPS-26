### Задание 1. Volume: обмен данными между контейнерами в поде
1. Создал [containers-data-exchange.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.1/containers-data-exchange.yaml)
2. Настроил
3. Обеспечил
<img width="1070" height="1234" alt="image" src="https://github.com/user-attachments/assets/075c5eb8-c481-48b6-b86f-ff4bd0d3eacb" />
<img width="1142" height="777" alt="image" src="https://github.com/user-attachments/assets/643f0b8f-e739-450d-b984-e2c6f60b7c4a" />
<img width="1124" height="286" alt="image" src="https://github.com/user-attachments/assets/f96f9815-cd94-4040-bd8d-aa0d077e96ef" />

### Задание 2. PV, PVC
1. Создал в [pv-pvc.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.1/pv-pvc.yaml)
2. Создал в [pv-pvc.yaml](https://github.com/TaHKuX/SHVIRTD-26/blob/main/kuber-homeworks/2.1/pv-pvc.yaml)
3. Демонстрирую
<img width="1158" height="503" alt="image" src="https://github.com/user-attachments/assets/62199e52-87e1-4fbe-b01a-a917ddbb8ce2" />

4. Удалил Deployment и PVC, статус сменился на Released, т.к. используется политика Retain
<img width="898" height="508" alt="image" src="https://github.com/user-attachments/assets/88f09ac2-f4aa-4d12-8e30-d71ce632e3b5" />

5. Удалил PV, файл не удалился из-за политики Retain и особенностей hostPath
<img width="735" height="1188" alt="image" src="https://github.com/user-attachments/assets/3e93c9cc-b71f-4c9a-9773-69c8aef37e09" />

### Задание 3. StorageClass
### Задача
Создать Deployment приложения, использующего PVC, созданный на основе StorageClass.

### Шаги выполнения

1. Создать Deployment приложения, состоящего из контейнеров busybox и multitool, использующего созданный ранее PVC.
2. Создать SC и PVC для подключения папки на локальной ноде, которая будет использована в поде.
3. Продемонстрировать, что контейнер multitool может читать данные из файла в смонтированной директории, в который busybox записывает данные каждые 5 секунд.

### Что сдать на проверку
- Манифесты:
  - `sc.yaml`
- Скриншоты:
  - каждый шаг выполнения задания, начиная с шага 2
