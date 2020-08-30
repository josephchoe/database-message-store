-- Revert database-message-store:functions/is_category from pg

BEGIN;

DROP FUNCTION message_store.is_category(varchar);

COMMIT;
