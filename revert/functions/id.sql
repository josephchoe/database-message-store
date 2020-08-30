-- Revert database-message-store:functions/id from pg

BEGIN;

DROP FUNCTION message_store.id(varchar);

COMMIT;
