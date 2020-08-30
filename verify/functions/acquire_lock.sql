-- Verify database-message-store:functions/acquire_lock on pg

BEGIN;

SELECT has_function_privilege('message_store.acquire_lock(varchar)', 'execute');

ROLLBACK;
