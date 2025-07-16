#!/bin/sh

set -e

python manage.py migrate --noinput
python manage.py collectstatic --noinput --clear

cp -r /app/collected_static/. /staticfiles/
cp -r /app/collected_static/. /backend_static/static/

exec "$@"
