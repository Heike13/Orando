-- Revert orando:00-pluginPostgis from pg

BEGIN;

DROP EXTENSION IF EXISTS postgis_topology;
DROP EXTENSION IF EXISTS postgis;

COMMIT;
