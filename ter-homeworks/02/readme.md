### Задание 1
4. Невозможные значения для `resource "yandex_compute_instance" "platform"`:\
`platform_id   = "standart-v4" -> "standart-v3"`\
`cores         = 1             -> 2`\
`core_fraction = 5             -> 20`
5.
<img width="2130" height="136" alt="image" src="https://github.com/user-attachments/assets/12c3313f-4a5f-485c-a8a8-10961933caee" />
<img width="435" height="42" alt="image" src="https://github.com/user-attachments/assets/717828bd-d8c7-47b6-8121-a72627b66919" />

6. Экономить ресурсы, т.к. `preemptible = true` - автоматичяески остановит ВМ через 24 часа или раньше, а `core_fraction=5` дешевле остальных вариантов (хоть и гарантируем минимум 5% от CPU, но может использовать и больше, если повезёт с соседями)
### Задание 2

### Задание 3

### Задание 4
<img width="577" height="400" alt="image" src="https://github.com/user-attachments/assets/228dad0d-ed61-4c15-855b-cd3cb214f1c7" />

### Задание 5

### Задание 6

### Задание 7*

### Задание 8*

### Задание 9*
