-- Verify database-message-store:privileges/owner/table on pg

BEGIN;

SELECT has_table_privilege('message_store_owner', 'message_store.messages', 'select');
SELECT has_table_privilege('message_store_owner', 'message_store.messages', 'insert');

ROLLBACK;
