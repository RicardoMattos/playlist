#!/bin/sh

echo "starting app"

HOST="0.0.0.0"
PORT=$1

if [ -z "$PORT" ]; then
    PORT="8000"
fi

python manage.py migrate
python manage.py runserver "$HOST:$PORT"
