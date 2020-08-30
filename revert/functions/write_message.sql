-- Revert database-message-store:functions/write_message from pg

BEGIN;

DROP FUNCTION message_store.write_message(varchar, varchar, varchar, jsonb, jsonb, bigint);

COMMIT;
