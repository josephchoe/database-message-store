-- Revert database-message-store:schemas/public from pg

BEGIN;

CREATE SCHEMA public;

GRANT ALL ON SCHEMA public TO PUBLIC;

COMMIT;
