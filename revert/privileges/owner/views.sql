-- Revert database-message-store:privileges/owner/views from pg

BEGIN;

REVOKE ALL ON message_store.category_type_summary FROM message_store_owner;
REVOKE ALL ON message_store.stream_summary FROM message_store_owner;
REVOKE ALL ON message_store.stream_type_summary FROM message_store_owner;
REVOKE ALL ON message_store.type_category_summary FROM message_store_owner;
REVOKE ALL ON message_store.type_stream_summary FROM message_store_owner;
REVOKE ALL ON message_store.type_summary FROM message_store_owner;

COMMIT;
