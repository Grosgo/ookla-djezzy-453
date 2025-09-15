# Utiliser une image Node officielle
FROM node:18

# Définir le dossier de travail
WORKDIR /app

# Copier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste du projet
COPY . .

# Exposer le port (Back4App attend 3000 par défaut)
EXPOSE 3000

# Démarrer ton serveur
CMD ["node", "server.js"]
