# Back-office
 
Monolithic API : MVC architecture.
Data mappers manage persistence of data while controllers and routes organize business logic and HTTP request management. 
The application is structured to increase maintainability and scale, all this allows a clear separation of concerns.

## Features

- Double Authentication (email) and user management.
- Consultation of information related to the available routes (using GEOjson technologie with postGis extension)
- API doc with Swagger
- Versionning DB with Sqitch
- OWASP protection
- Proxy server using Nginx
- Controlled environment with DOCKER
- Containers mapping with DOCKER COMPOSE
- Unitary tests & automatic

## What is needed ?

- [Node.js](https://nodejs.org/)
- [npm](https://www.npmjs.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Postgis](https://postgis.net/)
- [Sqitch](https://sqitch.org/)
- [Docker](https://www.docker.com/)

## Install
Into the "Back" foler

1. Install Node.js dependencies (use NPM) :

   ```bash
   npm install
   ```

2. Set up the .env variables (don't modify) : 

   ```bash
   mv .env.example .env
   ```

## Start the server and DataBase with DOCKER COMPOSE : 

1. Check that no PostgreSQL processes are running in the background (often this is the case on LINUX distributions). Locate the postgres instance of your process with :
   ```bash
   sudo lsof -i :5432
   ```

2. If the process exists, enter its PID to stop it :
   ```bash
   sudo kill <PID>
   ```

3. Clean the memory and check that the image is not already instantiated :
   ```bash
   sudo docker-compose down -v
   ```

4. Launch the services defined in `docker-compose.yml` :
   ```bash
   sudo docker-compose up --build
   ```

       
## If you want to launch local DataBase with Squitch 

Setup the squitch configuration file 
   ```bash
    mv sqitch.examples.conf sqitch.conf
   ```

Remember : create a database and update squitch.conf document

## API doc
This project uses Swagger as documentation for the REST API. It generate an interactive documentation wich can be navigable, to ease understandement of diferent endpoints from API

    To access the Swagger doc : http://localhost:4000/api-docs/




