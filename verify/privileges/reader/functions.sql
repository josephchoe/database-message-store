-- Verify database-message-store:privileges/reader/functions on pg

BEGIN;

SELECT has_function_privilege('message_store_reader', 'message_store.get_category_messages(varchar, bigint, bigint, varchar, bigint, bigint, varchar)', 'execute');
SELECT has_function_privilege('message_store_reader', 'message_store.get_last_stream_message(varchar)', 'execute');
SELECT has_function_privilege('message_store_reader', 'message_store.get_stream_messages(varchar, bigint, bigint, varchar)', 'execute');

ROLLBACK;
