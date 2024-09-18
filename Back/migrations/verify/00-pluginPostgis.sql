-- Verify orando:00-pluginPostgis on pg

BEGIN;

SELECT extname FROM pg_extension WHERE extname = 'postgis';
SELECT extname FROM pg_extension WHERE extname = 'postgis_topology';

ROLLBACK;
