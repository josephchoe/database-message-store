-- Verify database-message-store:privileges/writer/functions on pg

BEGIN;

SELECT has_function_privilege('message_store_writer', 'message_store.write_message(varchar, varchar, varchar, jsonb, jsonb, bigint)', 'execute');

ROLLBACK;
