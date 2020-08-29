-- Deploy database-message-store:schemas/public to pg

BEGIN;

DROP SCHEMA IF EXISTS public;

COMMIT;
