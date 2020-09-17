-- Deploy database-message-store:privileges/owner/sequence to pg
-- requires: roles/owner
-- requires: schemas/message_store
-- requires: tables/messages

BEGIN;

GRANT USAGE, SELECT ON SEQUENCE message_store.messages_global_position_seq TO message_store_owner;

COMMIT;
