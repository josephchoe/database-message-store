-- Deploy database-message-store:privileges/owner/table to pg
-- requires: roles/owner
-- requires: schemas/message_store
-- requires: tables/messages

BEGIN;

GRANT SELECT, INSERT ON message_store.messages TO message_store_owner;

COMMIT;
