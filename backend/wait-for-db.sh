#!/bin/sh

until nc -z db 5432; do
  echo "⏳ Attente de PostgreSQL..."
  sleep 1
done

echo "✅ PostgreSQL est prêt !"
exec "$@"