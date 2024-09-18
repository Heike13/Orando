-- Revert orando:01-insertTables from pg

BEGIN;



-- Suppression des tables et des contraintes
DROP TABLE IF EXISTS "users_has_hikes";
DROP TABLE IF EXISTS "hikes";
DROP TABLE IF EXISTS "users";

-- Suppression du domaine
DROP DOMAIN IF EXISTS "email";


COMMIT;
