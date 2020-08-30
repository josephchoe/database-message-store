-- Revert database-message-store:functions/get_stream_messages from pg

BEGIN;

DROP FUNCTION message_store.get_stream_messages(varchar, bigint, bigint, varchar);

COMMIT;
