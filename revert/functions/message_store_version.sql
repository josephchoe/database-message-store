-- Revert database-message-store:functions/message_store_version from pg

BEGIN;

DROP FUNCTION message_store.message_store_version();

COMMIT;
