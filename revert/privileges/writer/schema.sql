-- Revert database-message-store:privileges/writer/schema from pg

BEGIN;

REVOKE USAGE ON SCHEMA message_store FROM message_store_writer;

COMMIT;
