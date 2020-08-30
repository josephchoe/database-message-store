-- Verify database-message-store:functions/get_last_stream_message on pg

BEGIN;

SELECT has_function_privilege('message_store.get_last_stream_message(varchar)', 'execute');

ROLLBACK;
