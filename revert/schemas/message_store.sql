-- Revert database-message-store:schemas/message_store from pg

BEGIN;

DROP SCHEMA message_store;

COMMIT;
