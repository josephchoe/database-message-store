-- Revert database-message-store:functions/get_category_messages from pg

BEGIN;

DROP FUNCTION message_store.get_category_messages(varchar, bigint, bigint, varchar, bigint, bigint, varchar);

COMMIT;
