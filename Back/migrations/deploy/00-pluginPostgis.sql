-- Deploy orando:00-pluginPostgis to pg

BEGIN;

CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology; --optionnel pour des fonctionnalité complementaire

COMMIT;
