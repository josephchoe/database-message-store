-- Verify database-message-store:functions/get_category_messages on pg

BEGIN;

SELECT has_function_privilege('message_store.get_category_messages(varchar, bigint, bigint, varchar, bigint, bigint, varchar)', 'execute');

ROLLBACK;
