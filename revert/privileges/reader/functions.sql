-- Revert database-message-store:privileges/reader/functions from pg

BEGIN;

REVOKE ALL ON FUNCTION message_store.get_category_messages(varchar, bigint, bigint, varchar, bigint, bigint, varchar) FROM message_store_reader;
REVOKE ALL ON FUNCTION message_store.get_last_stream_message(varchar) FROM message_store_reader;
REVOKE ALL ON FUNCTION message_store.get_stream_messages(varchar, bigint, bigint, varchar) FROM message_store_reader;

COMMIT;
