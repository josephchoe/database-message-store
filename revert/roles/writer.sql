-- Revert database-message-store:roles/writer from pg

BEGIN;

DROP ROLE message_store_writer;

COMMIT;
