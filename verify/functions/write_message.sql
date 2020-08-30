-- Verify database-message-store:functions/write_message on pg

BEGIN;

SELECT has_function_privilege('message_store.write_message(varchar, varchar, varchar, jsonb, jsonb, bigint)', 'execute');

ROLLBACK;
