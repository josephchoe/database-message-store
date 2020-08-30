-- Verify database-message-store:functions/category on pg

BEGIN;

SELECT has_function_privilege('message_store.category(varchar)', 'execute');

ROLLBACK;
