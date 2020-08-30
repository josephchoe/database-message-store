-- Verify database-message-store:functions/id on pg

BEGIN;

SELECT has_function_privilege('message_store.id(varchar)', 'execute');

ROLLBACK;
