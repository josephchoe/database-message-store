-- Verify database-message-store:functions/get_stream_messages on pg

BEGIN;

SELECT has_function_privilege('message_store.get_stream_messages(varchar, bigint, bigint, varchar)', 'execute');

ROLLBACK;
