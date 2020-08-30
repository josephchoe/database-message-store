-- Revert database-message-store:extensions/pgcrypto from pg

BEGIN;

DROP EXTENSION pgcrypto;

COMMIT;
