-- Revert database-message-store:privileges/reader/schema from pg

BEGIN;

REVOKE USAGE ON SCHEMA message_store FROM message_store_reader;

COMMIT;
