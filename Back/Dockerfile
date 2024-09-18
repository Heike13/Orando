# Utilisation de l'image officielle de Node.js comme image de base
FROM node:14

# Définir le repertoire de travail
WORKDIR /usr/src/app

# Copier les fichiers package.json et package-lock.json
COPY package.json package-lock.json ./

# Installer les dépendances
RUN npm install

# Copie le dossier du repertoire courant dans le repertoire de travail
COPY . .

# Exposer le port de l'application
EXPOSE 4000

# Commande pour démarrer l'application
CMD ["npm", "start"]