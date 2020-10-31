-- Revert database-message-store:privileges/writer/functions from pg

BEGIN;

REVOKE ALL ON FUNCTION message_store.write_message(varchar, varchar, varchar, jsonb, jsonb, bigint) FROM message_store_writer;

COMMIT;
