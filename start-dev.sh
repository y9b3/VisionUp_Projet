#!/bin/bash

# Détecter l'IP locale
IP=$(ipconfig getifaddr en0 2>/dev/null || hostname -I | cut -d' ' -f1)

echo "📡 Ton IP locale est : $IP"

# Générer .env.runtime
echo "REACT_NATIVE_PACKAGER_HOSTNAME=$IP" > .env.runtime
echo "EXPO_DEVTOOLS_LISTEN_ADDRESS=0.0.0.0" >> .env.runtime

# Lancer docker-compose
docker-compose --env-file .env.runtime up