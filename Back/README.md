## Back-office
 
Monolithic API : MVC architecture.
Data mappers manage persistence of data while controllers and routes organize business logic and HTTP request management. 
The application is structured to increase maintainability and scale, all this allows a clear separation of concerns.

## Features

- Authentication and user management.
- Consultation of information related to the available routes.

### What is needed ?

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Postgis](https://postgis.net/)
- [Sqitch](https://sqitch.org/)
- [Docker](https://www.docker.com/)

### Install
Into the "Back" repo

1. Install Node.js dependencies (use NPM) :

   ```bash
   npm install
   ```

2. Set up the .env variables (don't modify) : 

   ```bash
   mv .env.example .env
   ```

   ```plaintext
   DB_USER=votre_utilisateur
   DB_HOST=localhost
   DB_NAME=nom_de_votre_base
   DB_PASSWORD=votre_mot_de_passe
   DB_PORT=5432
   ```

   - Rename `sqitch.example.conf` to add squitch configuration file :
   ```bash
    mv sqitch.examples.conf sqitch.conf
   ```

3. Initialisez la base de données dans le terminal:

   ```bash
   createdb orando

   sqitch deploy

   ```

4. Launch the http server :

```bash
npm run dev
```

## To Start the server and DataBase usning DOCKER COMPOSE : 

1 - Vérifiez qu'aucun processus de PostgreSQL ne fonctionne en arrière plan (souvent le cas sur les distributions LINUX). Repérez l'instance postgres de votre processus avec : 
```bash
sudo lsof -i :5432
```

2 - Si le processus existe, saisissez son PID pour l'arrêter : 
```bash
sudo kill <PID>
```

3. Nettoyer la ram et vérifier que l'image ne soit pas déjà instanciée :

```bash
sudo docker-compose down -v
```

4. Lancer les services définis dans `docker-compose.yml` :

```bash
sudo docker-compose up --build
```

## Documentation de l'API

Ce projet utilise Swagger pour documenter l'API RESTful.
Swagger permet de générer une documentation interactive et facilement navigable, ce qui facilite la compréhension et l'uilisation des différentes endpointss de l'API.

### Accès à la documentation Swagger

Pour accéder à la documentation Swagger, démarrez l'application et rendez-vous à l'URL suivante dans votre navigateur : http://localhost:4000/api-docs/

## Fabriqué avec

Voici les programmes/logiciels/ressources que vous nous avons utilisé pour développer notre projet :

![Express](https://img.shields.io/badge/Express-000000?style=for-the-badge&logo=express&logoColor=white) ![Express-rate-limit](https://img.shields.io/badge/Express--Rate--Limit-000000?style=for-the-badge&logo=express&logoColor=white) ![Express-validator](https://img.shields.io/badge/Express--Validator-000000?style=for-the-badge&logo=express&logoColor=white) ![PG](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white) ![Dotenv](https://img.shields.io/badge/Dotenv-ECD53F?style=for-the-badge&logo=dotenv&logoColor=black) ![File-stream-rotator](https://img.shields.io/badge/File--Stream--Rotator-000000?style=for-the-badge) ![Morgan](https://img.shields.io/badge/Morgan-000000?style=for-the-badge&logo=morgan&logoColor=white) ![Swagger](https://img.shields.io/badge/Swagger-85EA2D?style=for-the-badge&logo=swagger&logoColor=black) ![Js-Doc](https://img.shields.io/badge/Js--Doc-000000?style=for-the-badge&logo=jsdoc&logoColor=white) ![Scrypt](https://img.shields.io/badge/Scrypt-000000?style=for-the-badge&logo=scrypt&logoColor=white) ![Jsonwebtoken](https://img.shields.io/badge/JsonWebToken-000000?style=for-the-badge&logo=jsonwebtokens&logoColor=white) ![Helmet](https://img.shields.io/badge/Helmet-000000?style=for-the-badge&logo=helmet&logoColor=white) ![Node-cache](https://img.shields.io/badge/Node--Cache-000000?style=for-the-badge) ![Nodemailer](https://img.shields.io/badge/Nodemailer-000000?style=for-the-badge&logo=nodemailer&logoColor=white) ![CORS](https://img.shields.io/badge/CORS-000000?style=for-the-badge&logo=cors&logoColor=white) ![VS Code](https://img.shields.io/badge/VS_Code-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white)

- [Express](https://expressjs.com/)
- [Express-rate-limit](https://www.npmjs.com/package/express-rate-limit)
- [Express-validator](https://www.npmjs.com/package/express-validator)
- [PG](https://www.npmjs.com/package/pg)
- [Dot-env](https://www.npmjs.com/package/dotenv)
- [File-stream-rotator](https://www.npmjs.com/package/file-stream-rotator)
- [Swagger](https://swagger.io/resources/open-api/)
- [Js-Doc](https://jsdoc.app/)
- [Scrypt](https://www.npmjs.com/package/scrypt)
- [Jsonwebtoken](https://jwt.io/)
- [Helmet](https://www.npmjs.com/package/helmet)
- [Morgan](https://www.npmjs.com/package/morgan)
- [Node-cache](https://www.npmjs.com/package/node-cache)
- [Nodemailer](https://www.npmjs.com/package/nodemailer)
- [Cors](https://www.npmjs.com/package/cors)
- [Vs-code](https://code.visualstudio.com/)

### Sécurité de l'Application

Pour une documentation complète sur les aspects de sécurité de cette application : 

ICI LA DOC RELATIVE

### Plusieurs documentation disponible si besoin

LE RESTE DE LA DOC

