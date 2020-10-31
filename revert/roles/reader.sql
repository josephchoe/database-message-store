-- Revert database-message-store:roles/reader from pg

BEGIN;

DROP ROLE message_store_reader;

COMMIT;
