-- Revert database-message-store:functions/cardinal_id from pg

BEGIN;

DROP FUNCTION message_store.cardinal_id(varchar);

COMMIT;
