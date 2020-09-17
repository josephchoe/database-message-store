-- Deploy database-message-store:privileges/owner/views to pg
-- requires: roles/owner
-- requires: schemas/message_store
-- requires: views/stream_summary
-- requires: views/type_summary
-- requires: views/stream_type_summary
-- requires: views/type_stream_summary
-- requires: views/category_type_summary
-- requires: views/type_category_summary

BEGIN;

GRANT SELECT ON message_store.category_type_summary TO message_store_owner;
GRANT SELECT ON message_store.stream_summary TO message_store_owner;
GRANT SELECT ON message_store.stream_type_summary TO message_store_owner;
GRANT SELECT ON message_store.type_category_summary TO message_store_owner;
GRANT SELECT ON message_store.type_stream_summary TO message_store_owner;
GRANT SELECT ON message_store.type_summary TO message_store_owner;

COMMIT;
