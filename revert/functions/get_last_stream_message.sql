-- Revert database-message-store:functions/get_last_stream_message from pg

BEGIN;

DROP FUNCTION message_store.get_last_stream_message(varchar);

COMMIT;
