-- Revert database-message-store:functions/acquire_lock from pg

BEGIN;

DROP FUNCTION message_store.acquire_lock(varchar);

COMMIT;
