-- Verify database-message-store:functions/cardinal_id on pg

BEGIN;

SELECT has_function_privilege('message_store.cardinal_id(varchar)', 'execute');

ROLLBACK;
