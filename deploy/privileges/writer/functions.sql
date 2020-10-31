-- Deploy database-message-store:privileges/writer/functions to pg
-- requires: roles/writer
-- requires: functions/write_message

BEGIN;

GRANT EXECUTE ON FUNCTION message_store.write_message(varchar, varchar, varchar, jsonb, jsonb, bigint) TO message_store_writer;

COMMIT;
