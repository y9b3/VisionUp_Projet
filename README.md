VisionUp 🚀

VisionUp est une application mobile qui met en relation des clients et des prestataires de services.Développé en React Native (Expo) pour le frontend et Django (REST) pour le backend.

📊 Structure du projet : 
visionup/
├── frontend/        # App React Native (Expo)
├── backend/         # API Django + PostgreSQL
├── docker-compose.yml
├── start-dev.sh     # Script pour lancer tout automatiquement
├── .env             # Variables d’environnement globales
└── .env.runtime     # Généré automatiquement par start-dev.sh

⚙️ Pré-requis : 
 - Docker & Docker Compose
 - Node.js & Yarn (si tu veux lancer le frontend hors conteneur)
 - Application Expo Go sur ton smartphone (Android/iOS)
 - Être connecté au même réseau Wi-Fi que ton téléphone si tu veux tester sur mobile

🚀 Démarrage rapide : 
1. Clone le projet :
   - git clone [https://github.com/tonuser/visionup.git](https://github.com/y9b3/VisionUp_Projet.git)
     cd visionup
2. Rendre le script exécutable (une seule fois) :
    - chmod +x start-dev.sh
3. Lancer le projet (frontend + backend + DB) :
    - ./start-dev.sh
 Ce script détecte automatiquement ton IP locale et la configure pour Expo (React Native).

🌐 Accès  :
 - App mobile (Expo DevTools) : http://localhost:19000
 - Backend Django API : http://localhost:8000
 - Admin Django : http://localhost:8000/admin
 - Identifiants fournis en interne ou à créer avec : docker exec -it visionup_backend python manage.py createsuperuser

📱 Tester sur smartphone : 
 - Ouvre Expo Go sur ton téléphone
 - Scanne le QR code affiché dans les logs ou dans Expo DevTools
 - Assure-toi d’être sur le même réseau Wi-Fi que ta machine

🧪 Commandes utiles : 
 - # Arrêter tous les conteneurs : docker-compose down

 - # Rebuild les conteneurs : docker-compose build

 - # Lancer une commande Django dans le conteneur backend : docker exec -it visionup_backend python manage.py <commande>

🛠️ Dev à venir

 - Authentification : création de deux profils (UserClient, UserPrestataire)

 - Création de services & réservations

 - Interface frontend selon le rôle utilisateur

 - Notifications, paiements, etc.

👥 Équipe

 - Yanis B. — Lead dev / Fullstack

 - Daniel — Front-end Lead Dev (React Native)

 - Steph — Front-end Dev

 - Tiago — Back-end Dev (Django REST)

📌 Remarques
 - .env.runtime est généré automatiquement → ne pas modifier à la main
 - N’oubliez pas d’ajouter ce fichier à .gitignore
 
