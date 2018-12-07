#!/bin/sh

echo "Waiting for PostgreSQL..."

while ! nc -z scores-db 5432; do
    sleep 0.1
done

echo "PostgreSQL started"

python manage.py run -h 0.0.0.0