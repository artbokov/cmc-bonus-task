# cmc-bonus-task

## Installation

1. Запустить скрипт, указанный в `init-db.sql`, внутри `pgAdmin 4`
2. В корне проекта выполнить
  ```
  pip install -r requirements.txt
  ```
3. Запусить `app.py`, предварительно, при необходимости,  установив в константу `DB_PASSWORD` пароль от `postgres` сервера.
## Requirements
```
blinker==1.6.2
click==8.1.7
colorama==0.4.6
Flask==2.3.3
greenlet==2.0.2
itsdangerous==2.1.2
Jinja2==3.1.2
MarkupSafe==2.1.3
psycopg2==2.9.7
typing_extensions==4.8.0
Werkzeug==2.3.7
```
