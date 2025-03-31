#!/bin/bash

# 🔍 Détection de l'IP locale selon l'OS
if [[ "$OSTYPE" == "darwin"* ]]; then
  # macOS
  IP=$(ipconfig getifaddr en0)
  if [ -z "$IP" ]; then
    IP=$(ipconfig getifaddr en1)
  fi
elif [[ "$OSTYPE" == "msys" || "$OSTYPE" == "win32" ]]; then
  # Windows (Git Bash)
  IP=$(ipconfig | grep "IPv4" | cut -d: -f2 | xargs)
else
  # Linux ou WSL
  IP=$(hostname -I | cut -d' ' -f1)
fi

# 🛑 Si aucune IP détectée
if [ -z "$IP" ]; then
  echo "❌ Impossible de détecter l'IP locale. Vérifie ta connexion réseau."
  exit 1
fi

echo "📡 Ton IP locale est : $IP"

# ✏️ Générer le fichier .env.runtime
echo "REACT_NATIVE_PACKAGER_HOSTNAME=$IP" > .env.runtime
echo "EXPO_DEVTOOLS_LISTEN_ADDRESS=0.0.0.0" >> .env.runtime

# 🐳 Lancer Docker
docker-compose --env-file .env.runtime up