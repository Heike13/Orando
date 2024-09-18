# Installation du server pour le déploiment du site Orando

Le projet orando sera deployé sur un machine ayant 4 cores et 8g de ram et 300go de stockage qui est connecter à travers vlan pour plus de sécurité. Au niveau os le server est un ubuntu server 22.04. Le mon de domaine a été pris sur cloudflare <<o-rando.com>> car permet d'avoir un proxy avancé qui masque l'ip publique du server.

## Configuration de l'environnement sécurisé pour ssh

1. Installation de opsenssh

   ```bash
   sudo apt update
   sudo apt install ssh
   ```

2. Ajout de la clé publique ssh

   ```bash
   nano ~/.ssh/authorized_keys
   ```

   Coller ici votre clé publique ssh,sauvergardez et quittez

   On donne les accés à la clé

   ```bash
   chmod 600 ~/.ssh/authorized_keys
   ```

3. Maintenant sécurisons le tout

   Modifion la façon d'accéder en ssh

   ```bash
       sudo nano /etc/ssh/sshd_config

       #Trouvez la ligne #Port 22, décommentez-la (enlevez le #) et changez le numéro de port en un port de votre choix, par exemple :
       Port 5000

       #On désactive la connection par mot de passe, on laisse seulement par clé-ssh

       PasswordAuthentication no
       ChallengeResponseAuthentication no
       UsePAM no

       #On redemarre le sshd

       sudo systemctl restart sshd
   ```

## Installation des dépendances

1. Installation de PostgreSQL

   ```bash

       #Mettre à jour la liste des paquets disponibles :

       sudo apt update

       #Installer PostgreSQL :

       sudo apt install postgresql postgresql-contrib

       #Démarrer et activer le service PostgreSQL :

       sudo systemctl start postgresql
       sudo systemctl enable postgresql


   ```

2. Installation de Postgis

   ```bash
       #Ajouter le dépôt pour PostGIS :

       sudo add-apt-repository ppa:ubuntugis/ppa
       sudo apt update

       #Installer Postgis

       sudo apt install postgis

   ```

3. Installation de sqitch :

   ```bash
       #Ajouter le dépôt pour Sqitch :

       echo 'deb http://apt.pgxn.org/ubuntu pgxn main' | sudo tee /etc/apt/sources.list.d/pgxn.list

       sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7FCC7D46ACCC4CF8

       sudo apt update

       #nstaller Sqitch :

       sudo apt install sqitch

   ```

4. Installation de NVM :

   ```bash
       #Télécharger et installer NVM :

       curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

       #Puis, rechargez votre shell :

       source ~/.bashrc

       #Installer Node.js avec NVM :

       nvm install node

   ```

5. Installation de Git :

   ```bash
       #Mettre à jour la liste des paquets disponibles :

       sudo apt update

       #Installer Git :

       sudo apt install git

   ```

## Migration des repositories des projets

1. Générer une clé SSH :

   ```bash
   ssh-keygen -t ed25519 -C "votre_email@example.com"
   ```

2. Ajouter la clé SSH à l'agent SSH :

   - Démarrer l'agent SSH

   ```bash
   eval "$(ssh-agent -s)"
   ```

   - Ajout de la clé à lagent

   ```bash
   ssh-add ~/.ssh/id_ed25519
   ```

3. Ajouter la clé au compt github :

   Copier votre clé publique et l'ajouter à votre github :

   ```bash
   cat ~/.ssh/id_ed25519.pub
   ```

4. Cloner les repositories à la racine du server

   ```bash
   git clone lien du projet.git
   ```

5. Commande de déployment

   ```bash
   cd nom du projet
   npm install
   # Ici nous utilisont screen ou pm2 pour contenir le server http
   screen npm run dev
   ```

   `Ctrl a + d` pour sortir du screen et recommencer pour le server front.

## Installation de nginx

1.  Etape 1 installation :

    ```bash
        sudo apt update
        sudo apt install nginx
    ```

2.  Etape 2 configuration :

    ```bash
        sudo nano /etc/nginx/sites-available/mon_site
    ```

    Ajout de la configuration :

    ```plaintext
    # Le server du port 80 attend le trafic http
    server {
    listen 80;
    listen [::]:80;
    server_name o-rando.com www.o-rando.com;
    return 302 https://$server_name$request_uri;

        }

    # Le server du port 443 attend le trafic https et inject les certificat ssl . 
    Attention dans notre cas, il est indispensable que le trafic soit full Https
    server {
    listen 443 ssl http2;
    listen [::]:443 ssl http2;
    server_name o-rando.com www.o-rando.com;

        ssl_certificate         /etc/ssl/cert.pem;
        ssl_certificate_key     /etc/ssl/key.pem;
        ssl_client_certificate /etc/ssl/cloudflare.crt;
        ssl_verify_client on;

    # Comme nous utilisons 2 serveur nous devons définir les routes et également point indispensable pour l'api back la configuration du server doit prendre en compte dans les entêtes de requete les cors.
        location / {
            proxy_pass http://localhost:5173;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }

        location /hikes/ {
            proxy_pass http://localhost:4000/hikes/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }

        location /bookmarks/ {
            proxy_pass http://localhost:4000/bookmarks/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }

        location /users/ {
            proxy_pass http://localhost:4000/users/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }

        location /api-docs/ {
            proxy_pass http://localhost:4000/api-docs/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }

        location /auth/ {
            proxy_pass http://localhost:4000/auth/;
            proxy_set_header Host $host;
            proxy_set_header X-Real-IP $remote_addr;
            proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            proxy_set_header X-Forwarded-Proto $scheme;
            add_header Access-Control-Allow-Origin "*";
            add_header Access-Control-Allow-Methods "GET, POST, PATCH, DELETE, OPTIONS";
            add_header Access-Control-Allow-Headers "Authorization, Content-Type, X-Customer-Software, X-My-Custom, Accept, Accept-Language";
            add_header Access-Control-Allow-Credentials "true";
        }
    }

    ```

3. Création d'un lien symboliques vers `sites enabled`:

    Utilisez la commande ln -s pour créer un lien symbolique entre le fichier de configuration dans sites-available et le répertoire sites-enabled. Remplacez votre-config par le nom de votre fichier de configuration.

    ```bash
    sudo ln -s /etc/nginx/sites-available/votre-config /etc/nginx/sites-enabled/
    ```

4. Vérification de la configuration :

    ```bash
    sudo nginx -t
    ```

5. Chargement de la configuration :

    ```bash
    sudo systemctl reload nginx
    ```

    Pour voir si nginx focntionne correctement :

    ```bash
        sudo systemctl status nginx
    ```

## Configuration de Cloudflare pour fonctionner avec nginx

Voici un tuto très bien fait pour paramètrer le SSL :

- [DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-host-a-website-using-cloudflare-and-nginx-on-ubuntu-20-04)

Et voila après quelque minutes ou heures le site est en ligne.
