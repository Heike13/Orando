-- Revert orando:02-sendSeeding from pg

BEGIN;

DELETE FROM users_has_hikes;

DELETE FROM users;

DELETE FROM hikes;

COMMIT;
