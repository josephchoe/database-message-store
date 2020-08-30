-- Verify database-message-store:functions/hash_64 on pg

BEGIN;

SELECT has_function_privilege('message_store.hash_64(varchar)', 'execute');

ROLLBACK;
