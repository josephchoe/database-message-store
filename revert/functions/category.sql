-- Revert database-message-store:functions/category from pg

BEGIN;

DROP FUNCTION message_store.category(varchar);

COMMIT;
