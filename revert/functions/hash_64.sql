-- Revert database-message-store:functions/hash_64 from pg

BEGIN;

DROP FUNCTION message_store.hash_64(varchar);

COMMIT;
