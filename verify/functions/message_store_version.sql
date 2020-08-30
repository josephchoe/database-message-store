-- Verify database-message-store:functions/message_store_version on pg

BEGIN;

SELECT has_function_privilege('message_store.message_store_version()', 'execute');

ROLLBACK;
