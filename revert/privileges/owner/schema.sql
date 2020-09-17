-- Revert database-message-store:privileges/owner/schema from pg

BEGIN;

REVOKE USAGE ON SCHEMA message_store FROM message_store_owner;

COMMIT;
