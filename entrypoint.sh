#!/bin/bash

python manage.py migrate
python manage.py loaddata snippets/fixtures/users.json

exec python manage.py runserver 0.0.0.0:8000

