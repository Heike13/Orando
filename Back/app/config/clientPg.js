import pg from 'pg'; 
//* Importation des modules
// import { config } from 'dotenv';
// config();

//On import toutes les fonctions de PG pour utiliser pool
const { Pool } = pg;
// Connect to PostgreSQL database
const pool = new Pool({
    host: process.env.PGHOST,
    user: process.env.PGUSER,
    password: process.env.PGPASSWORD,
    database: process.env.PGDATABASE,
    port: process.env.PGPORT
    //connectionString: "postgres://postgres:js4life@localhost/orando",
});

export default pool;
pool.connect((error) => {
    if (error) {
        console.error("Une erreur à lieu à la connexion avec notre BDD :",error.message);
    } else {
        console.log("Connection à la BDD réussie !");
    }
});