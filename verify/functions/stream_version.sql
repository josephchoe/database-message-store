-- Verify database-message-store:functions/stream_version on pg

BEGIN;

SELECT has_function_privilege('message_store.stream_version(varchar)', 'execute');

ROLLBACK;
