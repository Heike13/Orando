# Installation de docker et docker compose sur Ubuntu

## Installation de Docker

1. Mettre à jour les paquets existants :

```bash
    sudo apt update
    # Ne pas faire cette ligne si vous êtes sur le vm O'clock 
    sudo apt upgrade
```

2. Installer les paquets nécessaires pour utiliser le dépôt HTTPS :

```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common
```

3. Ajouter la clé GPG officielle de Docker :

```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
```

4. Ajouter le dépôt Docker :

```bash
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

5. Mettre à jour la liste des paquets :

```bash
sudo apt update
```

6. Installer Docker :

```bash
sudo apt install docker-ce
```

7. Vérifier que Docker est bien installé et fonctionne :

```bash
sudo systemctl status docker
```

## Installation de Docker Compose

1. Télécharger la dernière version de Docker Compose :

```bash
sudo curl -L "https://github.com/docker/compose/releases/download/$(curl -s https://api.github.com/repos/docker/compose/releases/latest | grep -Po '"tag_name": "\K[^\"]*')/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
```

2. Appliquer les permissions exécutables au binaire :

```bash
sudo chmod +x /usr/local/bin/docker-compose
```

3. Vérifier l'installation de Docker Compose :

```bash
docker-compose --version
```

## Quelques commandes qui vont bien

Docker

1. Exécuter un conteneur Docker :

```bash
sudo docker run hello-world
```

Cela téléchargera une image de test et exécutera un conteneur avec celle-ci.

2. Lister les conteneurs Docker :

```bash
sudo docker ps
```

3. Arrêter un conteneur Docker :

```bash
sudo docker stop [nom_du_conteneur]
```

Docker Compose

1. Créer un fichier docker-compose.yml :

Exemple :

```yaml
Copier le code
version: '3'
services:
  web:
    image: nginx
    ports:
      - "80:80"
  db:
    image: mysql
    environment:
      MYSQL_ROOT_PASSWORD: example
```

2. Lancer les services définis dans `docker-compose.yml` :

```bash
sudo docker-compose up --build
```

3. Arrêter les services :

```bash
sudo docker-compose down
```

4. Nettoyer la ram :

```bash
sudo docker-compose down -v
```
