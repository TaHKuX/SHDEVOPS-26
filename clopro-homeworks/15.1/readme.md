[network.tf](https://github.com/TaHKuX/SHDEVOPS-26/blob/main/clopro-homeworks/15.1/network.tf) и [providers.tf](https://github.com/TaHKuX/SHDEVOPS-26/blob/main/clopro-homeworks/15.1/providers.tf)

1. Создал пустую VPC и выбрал зону `a`
2. Публичная подсеть
- Создал в VPC subnet с названием public
- Создал в этой подсети NAT-инстанс
- Создал в этой публичной подсети виртуалку с публичным IP, подключиться к ней и убедиться, что есть доступ к интернету
<img width="679" height="990" alt="image" src="https://github.com/user-attachments/assets/ce05afc0-a85f-48ab-98b6-ac4647523bda" />

3. Приватная подсеть
- Создал в VPC subnet с названием private, сетью 192.168.20.0/24.
- Создать route table
- Создал в этой приватной подсети виртуалку с внутренним IP, подключился к ней через виртуалку, созданную ранее, и убедился, что есть доступ к интернету
<img width="657" height="967" alt="image" src="https://github.com/user-attachments/assets/860ca4b6-4939-4865-8d3c-6c4886568351" />
