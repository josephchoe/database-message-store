-- Revert database-message-store:privileges/owner/sequence from pg

BEGIN;

REVOKE ALL ON SEQUENCE message_store.messages_global_position_seq FROM message_store_owner;

COMMIT;
