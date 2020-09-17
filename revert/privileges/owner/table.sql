-- Revert database-message-store:privileges/owner/table from pg

BEGIN;

REVOKE ALL ON message_store.messages FROM message_store_owner;

COMMIT;
