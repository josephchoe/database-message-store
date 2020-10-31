-- Deploy database-message-store:privileges/reader/functions to pg
-- requires: roles/reader
-- requires: functions/get_category_messages
-- requires: functions/get_stream_messages
-- requires: functions/get_last_stream_message

BEGIN;

GRANT EXECUTE ON FUNCTION message_store.get_category_messages(varchar, bigint, bigint, varchar, bigint, bigint, varchar) TO message_store_reader;
GRANT EXECUTE ON FUNCTION message_store.get_last_stream_message(varchar) TO message_store_reader;
GRANT EXECUTE ON FUNCTION message_store.get_stream_messages(varchar, bigint, bigint, varchar) TO message_store_reader;

COMMIT;
