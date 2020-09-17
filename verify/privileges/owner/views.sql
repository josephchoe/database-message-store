-- Verify database-message-store:privileges/owner/views on pg

BEGIN;

SELECT has_table_privilege('message_store_owner', 'message_store.category_type_summary', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.stream_summary', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.stream_type_summary', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.type_category_summary', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.type_stream_summary', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.type_summary', 'select');

ROLLBACK;
