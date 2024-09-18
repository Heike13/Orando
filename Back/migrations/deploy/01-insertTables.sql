BEGIN;
-- Création du domaine "email" avec une contrainte de validation
CREATE DOMAIN "email" AS text
CHECK (
    value ~ '^(?:[a-z0-9!#$%&''*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&''*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9][0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])$'
);

-- Création de la table "users"
CREATE TABLE "users" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "nickname" TEXT NOT NULL UNIQUE,
    "localisation" TEXT,
    "email" "email" UNIQUE NOT NULL,
    "password" TEXT NOT NULL,
    "email_verified" BOOLEAN DEFAULT FALSE NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

-- Création de la table "hikes"
CREATE TABLE "hikes" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "slug" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "pictures" TEXT[] NOT NULL,
    "difficulty" TEXT NOT NULL,
    "time" INT,
    "distance" INT NOT NULL,
    "localisation" TEXT NOT NULL,
    "details" TEXT NOT NULL,
    "gps_coordinate" GEOMETRY(LINESTRING, 4326),
    "email_verified" BOOLEAN DEFAULT FALSE NOT NULL,
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

-- Création de la table "users_has_hikes"
CREATE TABLE "users_has_hikes" (
    "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "users_id" INTEGER REFERENCES "users"("id"),
    "hikes_id" INTEGER REFERENCES "hikes"("id"),
    "created_at" TIMESTAMPTZ NOT NULL DEFAULT now(),
    "updated_at" TIMESTAMPTZ
);

-- Ajout de la contrainte d'unicité sur la table "users_has_hikes"
ALTER TABLE "users_has_hikes" ADD CONSTRAINT unique_user_hike UNIQUE ("users_id", "hikes_id");

COMMIT;