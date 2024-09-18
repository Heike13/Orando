-- Verify orando:02-sendSeeding on pg

BEGIN;
-- Verify orando:01-insertTables on pg
SELECT id FROM "users_has_hikes" WHERE false;

SELECT id FROM "users" WHERE false;

SELECT id FROM "hikes" WHERE false;

SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'users'
AND COLUMN_NAME = 'email_verified';

ROLLBACK;
