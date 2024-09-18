
BEGIN;
-- Vérifier l'existence du domaine "email"
SELECT 1
FROM pg_type
WHERE typname = 'email';

-- Vérifier l'existence des tables
SELECT 1
FROM information_schema.tables
WHERE table_name = 'users';

SELECT 1
FROM information_schema.tables
WHERE table_name = 'hikes';

SELECT 1
FROM information_schema.tables
WHERE table_name = 'users_has_hikes';

INSERT INTO "users_has_hikes" ("users_id", "hikes_id") VALUES (1, 1);
INSERT INTO "users_has_hikes" ("users_id", "hikes_id") VALUES (1, 1);

-- Si l'insertion réussit, annulez la transaction et levez une erreur
ROLLBACK;
RAISE EXCEPTION 'Constraint unique_user_hike is not enforced properly';

EXCEPTION WHEN unique_violation THEN

ROLLBACK;
END;
