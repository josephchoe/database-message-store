-- Verify database-message-store:functions/is_category on pg

BEGIN;

SELECT has_function_privilege('message_store.is_category(varchar)', 'execute');

ROLLBACK;
