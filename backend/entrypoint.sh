#!/bin/sh

set -e

python manage.py migrate --noinput
python manage.py collectstatic --noinput --clear

cp -r /app/collected_static/. /staticfiles/
cp -r /app/collected_static/. /backend_static/static/

exec gunicorn --bind 0.0.0.0:9000 kittygram_backend.wsgi
