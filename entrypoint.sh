#!/bin/bash
python3 manage.py makemigrations
#python manage.py migrate
#python populate_user.py
cavagent run python3 manage.py runserver 0.0.0.0:8000
#python3 manage.py  runserver 0.0.0.0:8000
